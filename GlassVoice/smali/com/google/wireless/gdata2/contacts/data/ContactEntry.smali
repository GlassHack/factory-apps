.class public Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "ContactEntry.java"


# static fields
.field public static final GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final GENDER_MALE:Ljava/lang/String; = "male"

.field public static final TYPE_PRIORITY_HIGH:B = 0x1t

.field public static final TYPE_PRIORITY_LOW:B = 0x3t

.field public static final TYPE_PRIORITY_NORMAL:B = 0x2t

.field public static final TYPE_SENSITIVITY_CONFIDENTIAL:B = 0x1t

.field public static final TYPE_SENSITIVITY_NORMAL:B = 0x2t

.field public static final TYPE_SENSITIVITY_PERSONAL:B = 0x3t

.field public static final TYPE_SENSITIVITY_PRIVATE:B = 0x4t


# instance fields
.field private billingInformation:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private final calendarLinks:Ljava/util/Vector;

.field private directoryServer:Ljava/lang/String;

.field private final emailAddresses:Ljava/util/Vector;

.field private final events:Ljava/util/Vector;

.field private final extendedProperties:Ljava/util/Vector;

.field private final externalIds:Ljava/util/Vector;

.field private gender:Ljava/lang/String;

.field private final groups:Ljava/util/Vector;

.field private final hobbies:Ljava/util/Vector;

.field private final imAddresses:Ljava/util/Vector;

.field private initials:Ljava/lang/String;

.field private final jots:Ljava/util/Vector;

.field private final languages:Ljava/util/Vector;

.field private linkPhotoEtag:Ljava/lang/String;

.field private linkPhotoEtagHighRes:Ljava/lang/String;

.field private linkPhotoHref:Ljava/lang/String;

.field private linkPhotoHrefHighRes:Ljava/lang/String;

.field private linkPhotoType:Ljava/lang/String;

.field private linkPhotoTypeHighRes:Ljava/lang/String;

.field private maidenName:Ljava/lang/String;

.field private mileage:Ljava/lang/String;

.field private name:Lcom/google/wireless/gdata2/contacts/data/Name;

.field private nickname:Ljava/lang/String;

.field private occupation:Ljava/lang/String;

.field private final organizations:Ljava/util/Vector;

.field private final phoneNumbers:Ljava/util/Vector;

.field private final postalAddresses:Ljava/util/Vector;

.field private priority:B

.field private final relations:Ljava/util/Vector;

.field private sensitivity:B

.field private shortName:Ljava/lang/String;

.field private final sipAddresses:Ljava/util/Vector;

.field private subject:Ljava/lang/String;

.field private final userDefinedFields:Ljava/util/Vector;

.field private final webSites:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 77
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    .line 63
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 69
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 78
    return-void
.end method


# virtual methods
.method public addCalendarLink(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V
    .locals 1
    .param p1, "calendarLink"    # Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public addEmailAddress(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V
    .locals 1
    .param p1, "emailAddress"    # Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public addEvent(Lcom/google/wireless/gdata2/contacts/data/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/google/wireless/gdata2/contacts/data/Event;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public addExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V
    .locals 1
    .param p1, "extendedProperty"    # Lcom/google/wireless/gdata2/data/ExtendedProperty;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public addExternalId(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V
    .locals 1
    .param p1, "externalId"    # Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public addGroup(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V
    .locals 1
    .param p1, "group"    # Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public addHobby(Ljava/lang/String;)V
    .locals 1
    .param p1, "hobby"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public addImAddress(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V
    .locals 1
    .param p1, "imAddress"    # Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public addJot(Lcom/google/wireless/gdata2/contacts/data/Jot;)V
    .locals 1
    .param p1, "jot"    # Lcom/google/wireless/gdata2/contacts/data/Jot;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public addLanguage(Lcom/google/wireless/gdata2/contacts/data/Language;)V
    .locals 1
    .param p1, "language"    # Lcom/google/wireless/gdata2/contacts/data/Language;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public addOrganization(Lcom/google/wireless/gdata2/contacts/data/Organization;)V
    .locals 1
    .param p1, "organization"    # Lcom/google/wireless/gdata2/contacts/data/Organization;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public addPhoneNumber(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V
    .locals 1
    .param p1, "phoneNumber"    # Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public addPostalAddress(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V
    .locals 1
    .param p1, "postalAddress"    # Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public addRelation(Lcom/google/wireless/gdata2/contacts/data/Relation;)V
    .locals 1
    .param p1, "relation"    # Lcom/google/wireless/gdata2/contacts/data/Relation;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public addSipAddress(Lcom/google/wireless/gdata2/contacts/data/SipAddress;)V
    .locals 1
    .param p1, "sipAddress"    # Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public addUserDefinedField(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V
    .locals 1
    .param p1, "userDefinedField"    # Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public addWebSite(Lcom/google/wireless/gdata2/contacts/data/WebSite;)V
    .locals 1
    .param p1, "webSite"    # Lcom/google/wireless/gdata2/contacts/data/WebSite;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 517
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    .line 518
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    .line 519
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHrefHighRes:Ljava/lang/String;

    .line 520
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    .line 521
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoTypeHighRes:Ljava/lang/String;

    .line 522
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtagHighRes:Ljava/lang/String;

    .line 524
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    .line 525
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    .line 526
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    .line 527
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    .line 528
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    .line 529
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    .line 530
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    .line 531
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 532
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 533
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    .line 534
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    .line 535
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    .line 536
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    .line 537
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    .line 538
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 539
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 540
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 541
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 542
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 543
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 544
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 545
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 546
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 547
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 548
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 549
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 550
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 551
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 552
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 553
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 554
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 555
    return-void
.end method

.method public getBillingInformation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarLinks()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    return-object v0
.end method

.method public getDirectoryServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getEvents()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    return-object v0
.end method

.method public getExternalIds()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    return-object v0
.end method

.method public getHobbies()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    return-object v0
.end method

.method public getImAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getInitials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public getJots()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    return-object v0
.end method

.method public getLanguages()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    return-object v0
.end method

.method public getLinkPhotoETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoETagHighRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtagHighRes:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoHrefHighRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHrefHighRes:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoTypeHighRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoTypeHighRes:Ljava/lang/String;

    return-object v0
.end method

.method public getMaidenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    return-object v0
.end method

.method public getMileage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/google/wireless/gdata2/contacts/data/Name;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizations()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    return-object v0
.end method

.method public getPostalAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getPriority()B
    .locals 1

    .prologue
    .line 416
    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    return v0
.end method

.method public getRelations()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    return-object v0
.end method

.method public getSensitivity()B
    .locals 1

    .prologue
    .line 431
    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSipAddresses()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDefinedFields()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    return-object v0
.end method

.method public getWebSites()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    return-object v0
.end method

.method public setBillingInformation(Ljava/lang/String;)V
    .locals 0
    .param p1, "billingInformation"    # Ljava/lang/String;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setDirectoryServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "directoryServer"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setInitials(Ljava/lang/String;)V
    .locals 0
    .param p1, "initials"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setLinkPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "photoEtag"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setLinkPhotoHighRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "photoEtag"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHrefHighRes:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoTypeHighRes:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtagHighRes:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setMaidenName(Ljava/lang/String;)V
    .locals 0
    .param p1, "maidenName"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setMileage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mileage"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setName(Lcom/google/wireless/gdata2/contacts/data/Name;)V
    .locals 0
    .param p1, "name"    # Lcom/google/wireless/gdata2/contacts/data/Name;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    .line 482
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)V
    .locals 0
    .param p1, "occupation"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setPriority(B)V
    .locals 0
    .param p1, "priority"    # B

    .prologue
    .line 423
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 424
    return-void
.end method

.method public setSensitivity(B)V
    .locals 0
    .param p1, "sensitiviy"    # B

    .prologue
    .line 439
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 440
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortName"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    .line 468
    return-void
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 558
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 559
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const-string v1, "ContactEntry:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    const-string v1, " linkPhotoHref:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHrefHighRes:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 565
    const-string v1, " linkPhotoHrefHighRes:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHrefHighRes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 568
    const-string v1, " linkPhotoType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    :cond_2
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoTypeHighRes:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 571
    const-string v1, " linkPhotoTypeHighRes:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoTypeHighRes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    :cond_3
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 574
    const-string v1, " linkPhotoEtag:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    :cond_4
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtagHighRes:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 577
    const-string v1, " linkPhotoEtagHighRes:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtagHighRes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :cond_5
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 580
    const-string v1, " directoryServer:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    :cond_6
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 583
    const-string v1, " gender:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    :cond_7
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 586
    const-string v1, " initials:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    :cond_8
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 589
    const-string v1, " maidenName:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    :cond_9
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 592
    const-string v1, " mileage:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    :cond_a
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 595
    const-string v1, " nickname:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    :cond_b
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 598
    const-string v1, " occupaton:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    :cond_c
    const-string v1, " priority:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 602
    const-string v1, " sensitivity:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 604
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 605
    const-string v1, " shortName:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    :cond_d
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 608
    const-string v1, " subject:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    :cond_e
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 611
    const-string v1, " birthday:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    :cond_f
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 614
    const-string v1, " billingInformation:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    :cond_10
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    if-eqz v1, :cond_11

    .line 618
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->toString(Ljava/lang/StringBuffer;)V

    .line 619
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    :cond_11
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 622
    .local v0, "iter":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 623
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 625
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 627
    :cond_12
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 628
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 629
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 631
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 633
    :cond_13
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 634
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 635
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 637
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 639
    :cond_14
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 640
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 641
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 642
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->toString(Ljava/lang/StringBuffer;)V

    .line 643
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 645
    :cond_15
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 646
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 647
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 648
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->toString(Ljava/lang/StringBuffer;)V

    .line 649
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 651
    :cond_16
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 652
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 653
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->toString(Ljava/lang/StringBuffer;)V

    .line 655
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 657
    :cond_17
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 658
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 659
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->toString(Ljava/lang/StringBuffer;)V

    .line 661
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 663
    :cond_18
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 664
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 665
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->toString(Ljava/lang/StringBuffer;)V

    .line 667
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 669
    :cond_19
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 670
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 671
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Event;->toString(Ljava/lang/StringBuffer;)V

    .line 673
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 675
    :cond_1a
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 676
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 677
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->toString(Ljava/lang/StringBuffer;)V

    .line 679
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 681
    :cond_1b
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 682
    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 683
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 685
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 687
    :cond_1c
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 688
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 689
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 691
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 693
    :cond_1d
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 694
    :goto_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 695
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Language;->toString(Ljava/lang/StringBuffer;)V

    .line 697
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 699
    :cond_1e
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 700
    :goto_d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 701
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->toString(Ljava/lang/StringBuffer;)V

    .line 703
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 705
    :cond_1f
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 706
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 707
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 708
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->toString(Ljava/lang/StringBuffer;)V

    .line 709
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 711
    :cond_20
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 712
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 713
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->toString(Ljava/lang/StringBuffer;)V

    .line 715
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 717
    :cond_21
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 718
    :goto_10
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 719
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 720
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 721
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 723
    :cond_22
    return-void
.end method

.method public validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->validate()V

    .line 727
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "female"

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "male"

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "invalid gender \"%s\", must be one of \"%s\" or \"%s\""

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "female"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "male"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "iter":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->validate()V

    goto :goto_0

    .line 735
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->validate()V

    goto :goto_1

    .line 738
    :cond_2
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->validate()V

    goto :goto_2

    .line 741
    :cond_3
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 742
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->validate()V

    goto :goto_3

    .line 744
    :cond_4
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 745
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->validate()V

    goto :goto_4

    .line 747
    :cond_5
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 748
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->validate()V

    goto :goto_5

    .line 750
    :cond_6
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 751
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->validate()V

    goto :goto_6

    .line 754
    :cond_7
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 755
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->validate()V

    goto :goto_7

    .line 757
    :cond_8
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 758
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Event;->validate()V

    goto :goto_8

    .line 760
    :cond_9
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 761
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->validate()V

    goto :goto_9

    .line 763
    :cond_a
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 764
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Language;->validate()V

    goto :goto_a

    .line 766
    :cond_b
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 767
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->validate()V

    goto :goto_b

    .line 769
    :cond_c
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 770
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->validate()V

    goto :goto_c

    .line 772
    :cond_d
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 773
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->validate()V

    goto :goto_d

    .line 775
    :cond_e
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sipAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 776
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->validate()V

    goto :goto_e

    .line 778
    :cond_f
    return-void
.end method
