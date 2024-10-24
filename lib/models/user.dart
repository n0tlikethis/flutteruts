class User {
  String email;
  String password;
  String name;
  String address;
  String phone;

  User(
      {required this.email,
      required this.password,
      required this.name,
      required this.address,
      required this.phone});
}

List<User> userList = [
  User(
      email: "dnswr@www.com",
      password: "123",
      name: "Dani Daneswara",
      address: "Pojok Kanan Pulau Jawa",
      phone: "08765432109")
];
