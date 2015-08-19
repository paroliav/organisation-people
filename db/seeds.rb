# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

organisations = Organisation.create(
    [
        {
            title: 'ABC Company',
            location: 'Sydney'
        },
        {
            title: 'XYZ Company',
            location: 'Brisbane'
        },
        {
            title: 'Company ABC XYZ',
            location: 'Melbourne'
        }
    ]
)

organisations.sort!

Person.create(
    [
        {
            first_name: 'Paul',
            last_name: 'Smith',
            organisation: organisations[0],
            assessment_count: 5
        },
        {
            first_name: 'Andrew',
            last_name: 'Baker',
            organisation: organisations[1],
            assessment_count: 0
        },
        {
            first_name: 'Michael',
            last_name: 'Clarke',
            organisation: organisations[2],
            assessment_count: 14
        },
        {
            first_name: 'David',
            last_name: 'Cline',
            organisation: organisations[0],
            assessment_count: 3
        },
        {
            first_name: 'Adam',
            last_name: 'Broadbent',
            organisation: organisations[1],
            assessment_count: 0
        }
    ]
)
