class User {
  String login;
  String avatarUrl;
  String htmlUrl;
  String followersUrl;
  String followingUrl;
  String name;
  String bio;
  int publicRepos;
  int publicGists;
  int followers;
  int following;

  User(
      {
        this.login,
        this.avatarUrl,
        this.htmlUrl,
        this.followersUrl,
        this.followingUrl,
        this.name,
        this.bio,
        this.publicRepos,
        this.publicGists,
        this.followers,
        this.following
      }
  );

  User.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    avatarUrl = json['avatar_url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    name = json['name'];
    bio = json['bio'];
    publicRepos = json['public_repos'];
    publicGists = json['public_gists'];
    followers = json['followers'];
    following = json['following'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['avatar_url'] = this.avatarUrl;
    data['html_url'] = this.htmlUrl;
    data['followers_url'] = this.followersUrl;
    data['following_url'] = this.followingUrl;
    data['name'] = this.name;
    data['bio'] = this.bio;
    data['public_repos'] = this.publicRepos;
    data['public_gists'] = this.publicGists;
    data['followers'] = this.followers;
    data['following'] = this.following;
    return data;
  }
}