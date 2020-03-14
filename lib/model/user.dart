class User {
  String key;
  String email;
  String userId;
  String displayName;
  String userName;
  String webSite;
  String profilePic;
  String contact;
  String bio;
  String location;
  String dob;
  String createdAt;
  bool isVerified;
  int followers = 0;
  int following = 0;

  User({this.email, this.userId, this.displayName, this.profilePic,this.key,this.contact,this.bio,this.dob,this.location,this.createdAt,this.userName,this.followers,this.following,this.webSite,this.isVerified});

   User.fromJson(Map<dynamic, dynamic> map) {
     if(map == null){
       return ;
     }
    email = map['email'];
    userId = map['userId'];
    displayName = map['displayName'];
    profilePic = map['profilePic'];
    key = map['key'];
    dob = map['dob'];
    bio = map['bio'];
    location = map['location'];
    contact = map['contact'];
    createdAt = map['createdAt'];
    followers = map['followers'] ?? 0;
    following = map['following'] ?? 0;
    userName = map['userName'];
    webSite = map['webSite'];
    isVerified = map['isVerified'] ?? false;
  }
  toJson() {
    return {
      'key':key,
      "userId": userId,
      "email": email,
      'displayName': displayName,
      'userId': userId,
      'profilePic': profilePic,
      'contact':contact,
      'dob':dob,
      'bio':bio,
      'location':location,
      'createdAt':createdAt,
      'followers':followers ?? 0,
      'following':following ?? 0,
      'userName':userName,
      'webSite':webSite,
      'isVerified':isVerified ?? false
    };
  }

  User copyWith({String email, String userId,String displayName,String profilePic,String key,String contact,bio,String dob,String location,String createdAt,String userName,int followers,int following,String webSite,bool isVerified}){

     return User(
       email: email ?? this.email,
       bio: bio ?? this.bio,
       contact: contact ?? this.contact,
       createdAt: createdAt ?? this.createdAt,
       displayName: displayName ?? this.displayName,
       dob: dob ?? this.dob,
       followers: followers ?? this.following,
       following: following ?? this.following,
       isVerified: isVerified ?? this.isVerified,
       key: key ?? this.key,
       location: location ?? this.location,
       profilePic: profilePic ?? this.profilePic,
       userId: userId ?? this.userId,
       userName: userName ?? this.userName,
       webSite: webSite ?? this.webSite
     );
  }
}