---
layout: default
title: Profiles
nav_order: 5
has_children: true
---

# **TrueLinq Profile and Entity Structure**

TrueLinq is designed to **bring trust to personal and professional connections**. The platform allows users to create accounts and manage multiple types of profiles and entities depending on their role or service.

---

## **1. User**

**Description:**
A User is anyone who registers and logs into TrueLinq. Users are the central actors on the platform.

**Capabilities:**

* Create profiles (Personal or Professional)
* Connect with other Users
* Add and manage contacts

---

## **2. Profiles**

A User can create **two types of profiles** under their account:

### **2.1 Personal Profile**

**Description:**
A Personal Profile is meant for sharing with friends, family, and personal contacts. It acts like a digital visiting card.

**Features:**

* Shareable with contacts
* Add contact details (phone, email, address)
* Contacts can add this personal profile to their network

**Purpose:**

* Enables users to maintain personal connections
* Allows trusted sharing of contact information

---

### **2.2 Professional Profile**

**Description:**
A Professional Profile is for work-related purposes. It allows a user to showcase professional contacts and create a professional visiting card.

**Sub-types (user chooses one):**

| Sub-type         | Description                   | Examples                               | Color/Icon Idea         |
| ---------------- | ----------------------------- | -------------------------------------- | ----------------------- |
| Consultant       | Knowledge-based professionals | Lawyer, Doctor, Freelancer, Accountant | Blue / Briefcase        |
| Service Provider | Skilled, hands-on workers     | Plumber, Carpenter, Electrician        | Green / Wrench/Hand     |
| House Help       | Domestic help services        | Maid, Cook, Driver                     | Orange / Home/Hand icon |

**Features:**

* Users can list multiple contact numbers related to work
* Professional visiting card for sharing
* Reviewable by others for trust scoring

**Purpose:**

* Separate work-related contacts from personal ones
* Build credibility and trust in professional services before transactions

---

## **3. Business**

**Description:**
A Business is an entity created by a User to represent a company, organization, or multi-person operation.

**Features:**

* Can add multiple people to the Business
* Works like a Facebook Page / Meta Business
* Each member can have their own professional profile linked
* Collectively reviewable and trustable

**Purpose:**

* Represent multi-person organizations
* Allow businesses to manage their contacts, listings, and reputation

---

## **Hierarchy Overview**

```
User
│
├── Personal Profile
│    └── Shareable digital visiting card
│
├── Professional Profile (choose one)
│    ├── Consultant (lawyer, doctor, freelancer)
│    ├── Service Provider (plumber, carpenter, electrician)
│    └── House Help (maid, cook, driver)
│
└── Business
     ├── Multi-person entity
     └── Members with Professional Profiles
```

---

## **Summary Table**

| Entity/Profile       | Sub-type / Category | Examples                        | Purpose                                            |
| -------------------- | ------------------- | ------------------------------- | -------------------------------------------------- |
| Personal Profile     | —                   | User’s friends/family           | Share personal contacts                            |
| Professional Profile | Consultant          | Lawyer, Doctor, Freelancer      | Knowledge-based professional services              |
|                      | Service Provider    | Plumber, Carpenter, Electrician | Skilled, hands-on services                         |
|                      | House Help          | Maid, Cook, Driver              | Domestic help services                             |
| Business             | —                   | Company/Organization            | Multi-person entity, collective trust & reputation |

---

This version:

* Keeps **Professional at top-level**, but lets users choose a clear sub-type.
* Differentiates **personal and professional use cases**.
* Explains **Business entity** as a multi-person entity with professional profiles.
* Makes it **easy for developers, designers, and investors** to understand the hierarchy.

