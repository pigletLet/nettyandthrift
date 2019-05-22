namespace java thrift.generated

typedef  i16  short
typedef i32 int
typedef i64 long
typedef string String
typedef bool boolean

struct Person {
    1: optional String name,
    2: optional int age,
    3: optional boolean married
}

exception DataException {
    1: optional String exceptionname,
    2: optional String callback,
    3: optional String date
}

service PersonService {
    Person getPersonByPersonName(1: required String username) throws(1: DataException dataException),
    void PersonSave(1: required Person person) throws(1: DataException dataException)

}
