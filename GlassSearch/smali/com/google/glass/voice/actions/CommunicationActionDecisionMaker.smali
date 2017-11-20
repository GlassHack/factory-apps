.class public Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;
.super Ljava/lang/Object;
.source "CommunicationActionDecisionMaker.java"

# interfaces
.implements Lcom/google/glass/voice/actions/ActionDecisionMakerLink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private next:Lcom/google/glass/voice/actions/ActionDecisionMakerLink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private getEmail(Lcom/google/majel/proto/ContactProtos$ContactInformation;Lcom/google/majel/proto/ContactProtos$ContactType;)Ljava/util/List;
    .locals 3
    .param p1, "contactInfo"    # Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .param p2, "contactType"    # Lcom/google/majel/proto/ContactProtos$ContactType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/majel/proto/ContactProtos$ContactInformation;",
            "Lcom/google/majel/proto/ContactProtos$ContactType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "emailAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;>;"
    iget-object v2, p1, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    if-eqz v2, :cond_2

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 172
    if-eqz p2, :cond_0

    iget-object v2, p1, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 173
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    iget-object v2, p1, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emailAddress:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private static getLabel(I)Ljava/lang/String;
    .locals 1
    .param p0, "contactType"    # I

    .prologue
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 62
    const-string v0, "Other"

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    const-string v0, "Home"

    goto :goto_0

    .line 56
    :pswitch_1
    const-string v0, "Work"

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "Mobile"

    goto :goto_0

    .line 60
    :pswitch_3
    const-string v0, "Main"

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getPhoneNumber(Lcom/google/majel/proto/ContactProtos$ContactInformation;Lcom/google/majel/proto/ContactProtos$ContactType;)Ljava/util/List;
    .locals 5
    .param p1, "contactInfo"    # Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .param p2, "contactType"    # Lcom/google/majel/proto/ContactProtos$ContactType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/majel/proto/ContactProtos$ContactInformation;",
            "Lcom/google/majel/proto/ContactProtos$ContactType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    sget-object v2, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Getting phone number"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;>;"
    iget-object v2, p1, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    if-eqz v2, :cond_2

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 155
    if-eqz p2, :cond_0

    iget-object v2, p1, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    iget-object v2, p1, Lcom/google/majel/proto/ContactProtos$ContactInformation;->phoneNumber:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method private hasAtleastOneContact(Lcom/google/majel/proto/ContactProtos$ContactReference;)Z
    .locals 12
    .param p1, "contactReference"    # Lcom/google/majel/proto/ContactProtos$ContactReference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    invoke-direct {p0, p1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasContactInformationAndQuery(Lcom/google/majel/proto/ContactProtos$ContactReference;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v3

    .line 226
    :cond_1
    iget-object v1, p1, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    .line 227
    .local v1, "contactQuery":Lcom/google/majel/proto/ContactProtos$ContactQuery;
    iget-object v7, p1, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    array-length v8, v7

    move v6, v3

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v2, v7, v6

    .line 228
    .local v2, "info":Lcom/google/majel/proto/ContactProtos$ContactInformation;
    iget-object v9, v1, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    array-length v10, v9

    move v5, v3

    :goto_2
    if-ge v5, v10, :cond_4

    aget v0, v9, v5

    .line 229
    .local v0, "contactMethod":I
    sget-object v11, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->PHONE_NUMBER:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    invoke-static {v11}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I

    move-result v11

    if-ne v0, v11, :cond_2

    iget-object v11, v1, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 230
    invoke-direct {p0, v2, v11}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getPhoneNumber(Lcom/google/majel/proto/ContactProtos$ContactInformation;Lcom/google/majel/proto/ContactProtos$ContactType;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    move v3, v4

    .line 231
    goto :goto_0

    .line 232
    :cond_2
    sget-object v11, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->EMAIL_ADDRESS:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    invoke-static {v11}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I

    move-result v11

    if-ne v0, v11, :cond_3

    iget-object v11, v1, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 233
    invoke-direct {p0, v2, v11}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getEmail(Lcom/google/majel/proto/ContactProtos$ContactInformation;Lcom/google/majel/proto/ContactProtos$ContactType;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    move v3, v4

    .line 234
    goto :goto_0

    .line 228
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 227
    .end local v0    # "contactMethod":I
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1
.end method

.method private hasContactInformationAndQuery(Lcom/google/majel/proto/ContactProtos$ContactReference;)Z
    .locals 1
    .param p1, "contactReference"    # Lcom/google/majel/proto/ContactProtos$ContactReference;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMultipleContacts(Lcom/google/majel/proto/ContactProtos$ContactReference;)Z
    .locals 2
    .param p1, "contactReference"    # Lcom/google/majel/proto/ContactProtos$ContactReference;

    .prologue
    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, p1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasContactInformationAndQuery(Lcom/google/majel/proto/ContactProtos$ContactReference;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMultipleEndpoints(Lcom/google/majel/proto/ContactProtos$ContactReference;)Z
    .locals 9
    .param p1, "contactReference"    # Lcom/google/majel/proto/ContactProtos$ContactReference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasAtleastOneContact(Lcom/google/majel/proto/ContactProtos$ContactReference;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    iget-object v2, p1, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    .line 196
    .local v2, "contactQuery":Lcom/google/majel/proto/ContactProtos$ContactQuery;
    iget-object v5, p1, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    aget-object v0, v5, v4

    .line 197
    .local v0, "contactInfo":Lcom/google/majel/proto/ContactProtos$ContactInformation;
    iget-object v6, v2, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_3

    aget v1, v6, v5

    .line 198
    .local v1, "contactMethod":I
    sget-object v8, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->PHONE_NUMBER:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    invoke-static {v8}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I

    move-result v8

    if-ne v1, v8, :cond_0

    iget-object v8, v2, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 199
    invoke-direct {p0, v0, v8}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getPhoneNumber(Lcom/google/majel/proto/ContactProtos$ContactInformation;Lcom/google/majel/proto/ContactProtos$ContactType;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v3, :cond_1

    :cond_0
    sget-object v8, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->EMAIL_ADDRESS:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    .line 200
    invoke-static {v8}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I

    move-result v8

    if-ne v1, v8, :cond_2

    iget-object v8, v2, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 201
    invoke-direct {p0, v0, v8}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getEmail(Lcom/google/majel/proto/ContactProtos$ContactInformation;Lcom/google/majel/proto/ContactProtos$ContactType;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v3, :cond_2

    .line 206
    .end local v0    # "contactInfo":Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .end local v1    # "contactMethod":I
    .end local v2    # "contactQuery":Lcom/google/majel/proto/ContactProtos$ContactQuery;
    :cond_1
    :goto_1
    return v3

    .line 197
    .restart local v0    # "contactInfo":Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .restart local v1    # "contactMethod":I
    .restart local v2    # "contactQuery":Lcom/google/majel/proto/ContactProtos$ContactQuery;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "contactInfo":Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .end local v1    # "contactMethod":I
    .end local v2    # "contactQuery":Lcom/google/majel/proto/ContactProtos$ContactQuery;
    :cond_3
    move v3, v4

    .line 206
    goto :goto_1
.end method

.method private static isCommunicationArgument(Lcom/google/majel/proto/ModularActionProtos$ModularAction;I)Z
    .locals 1
    .param p0, "action"    # Lcom/google/majel/proto/ModularActionProtos$ModularAction;
    .param p1, "argumentId"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/majel/proto/ModularActionProtos$Argument;->contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeLaunchDecision(Lcom/google/majel/proto/ModularActionProtos$UserIntent;Lcom/google/majel/proto/ContactProtos$ContactReference;Lcom/google/majel/proto/ModularActionProtos$ResourceSet;)Lcom/google/glass/voice/actions/ActionDecision;
    .locals 12
    .param p1, "intent"    # Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .param p2, "contactReference"    # Lcom/google/majel/proto/ContactProtos$ContactReference;
    .param p3, "resourceSet"    # Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 118
    iget-object v6, p2, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    aget-object v2, v6, v9

    .line 119
    .local v2, "contactInfo":Lcom/google/majel/proto/ContactProtos$ContactInformation;
    const/4 v1, 0x0

    .line 120
    .local v1, "contactAddress":Ljava/lang/String;
    const/4 v4, 0x0

    .line 122
    .local v4, "endPointType":Ljava/lang/String;
    iget-object v6, p2, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    iget-object v6, v6, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactMethod:[I

    aget v6, v6, v9

    sget-object v7, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->PHONE_NUMBER:Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;

    invoke-static {v7}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;->access$000(Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker$ContactMethod;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 123
    iget-object v6, p2, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    iget-object v6, v6, Lcom/google/majel/proto/ContactProtos$ContactQuery;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 124
    invoke-direct {p0, v2, v6}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getPhoneNumber(Lcom/google/majel/proto/ContactProtos$ContactInformation;Lcom/google/majel/proto/ContactProtos$ContactType;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;

    .line 125
    .local v5, "phoneNumber":Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    invoke-virtual {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v6, v5, Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-virtual {v6}, Lcom/google/majel/proto/ContactProtos$ContactType;->getType()I

    move-result v6

    invoke-static {v6}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    .end local v5    # "phoneNumber":Lcom/google/majel/proto/ContactProtos$ContactInformation$PhoneNumber;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "callIntent":Landroid/content/Intent;
    const-string v6, "com.google.glass.search.actions.CONTACT_ADDRESS"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v6, p1, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    aget-object v6, v6, v9

    iget-object v6, v6, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->androidIntentExecutionInfoExtension:Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;

    .line 132
    invoke-virtual {v6}, Lcom/google/majel/proto/ModularActionProtos$AndroidIntentExecutionInfo;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {v2}, Lcom/google/majel/proto/ContactProtos$ContactInformation;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "contactName":Ljava/lang/String;
    new-instance v6, Lcom/google/glass/voice/actions/ActionDecision$Builder;

    invoke-direct {v6}, Lcom/google/glass/voice/actions/ActionDecision$Builder;-><init>()V

    .line 136
    invoke-virtual {v6, v10}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->autoExecute(Z)Lcom/google/glass/voice/actions/ActionDecision$Builder;

    move-result-object v6

    .line 137
    invoke-virtual {v6, v0}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->intent(Landroid/content/Intent;)Lcom/google/glass/voice/actions/ActionDecision$Builder;

    move-result-object v6

    iget-object v7, p3, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->displayPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    new-array v8, v11, [Ljava/lang/String;

    aput-object v3, v8, v9

    aput-object v4, v8, v10

    .line 138
    invoke-static {v7, v8}, Lcom/google/glass/voice/actions/ModularActionHandler;->transformArgument(Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->displayPrompt(Ljava/lang/String;)Lcom/google/glass/voice/actions/ActionDecision$Builder;

    move-result-object v6

    iget-object v7, p3, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->vocalizedPrompt:Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;

    new-array v8, v11, [Ljava/lang/String;

    aput-object v3, v8, v9

    aput-object v4, v8, v10

    .line 140
    invoke-static {v7, v8}, Lcom/google/glass/voice/actions/ModularActionHandler;->transformArgument(Lcom/google/majel/proto/ModularActionProtos$ArgumentTransformation;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->vocalizedPrompt(Ljava/lang/String;)Lcom/google/glass/voice/actions/ActionDecision$Builder;

    move-result-object v6

    .line 142
    invoke-virtual {v6}, Lcom/google/glass/voice/actions/ActionDecision$Builder;->build()Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public makeActionDecision(Lcom/google/majel/proto/ModularActionProtos$ModularAction;)Lcom/google/glass/voice/actions/ActionDecision;
    .locals 8
    .param p1, "action"    # Lcom/google/majel/proto/ModularActionProtos$ModularAction;

    .prologue
    const/4 v7, 0x0

    .line 69
    iget-object v5, p1, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->userIntent:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    aget-object v1, v5, v7

    .line 70
    .local v1, "intent":Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    iget-object v5, v1, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    if-nez v5, :cond_0

    .line 71
    sget-object v5, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "There is no required argument id!"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v5, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->next:Lcom/google/glass/voice/actions/ActionDecisionMakerLink;

    invoke-interface {v5, p1}, Lcom/google/glass/voice/actions/ActionDecisionMakerLink;->makeActionDecision(Lcom/google/majel/proto/ModularActionProtos$ModularAction;)Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v5

    .line 100
    :goto_0
    return-object v5

    .line 77
    :cond_0
    iget-object v5, v1, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    aget v5, v5, v7

    add-int/lit8 v4, v5, -0x1

    .line 78
    .local v4, "requirementId":I
    iget-object v5, p1, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    iget-object v5, v5, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    aget-object v2, v5, v4

    .line 79
    .local v2, "prompt":Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    invoke-virtual {v2}, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->getPromptedArgumentId()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 80
    .local v3, "promptedArgumentId":I
    invoke-static {p1, v3}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->isCommunicationArgument(Lcom/google/majel/proto/ModularActionProtos$ModularAction;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 81
    iget-object v5, p1, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->argument:[Lcom/google/majel/proto/ModularActionProtos$Argument;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/google/majel/proto/ModularActionProtos$Argument;->contactReferenceArgumentExtension:Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;

    iget-object v0, v5, Lcom/google/majel/proto/ModularActionProtos$ContactReferenceArgument;->value:Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 83
    .local v0, "contactReference":Lcom/google/majel/proto/ContactProtos$ContactReference;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasMultipleContacts(Lcom/google/majel/proto/ContactProtos$ContactReference;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    sget-object v5, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "People disambiguation."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .end local v0    # "contactReference":Lcom/google/majel/proto/ContactProtos$ContactReference;
    :cond_1
    :goto_1
    sget-object v5, Lcom/google/glass/voice/actions/ActionDecision;->NO_OP_DECISON:Lcom/google/glass/voice/actions/ActionDecision;

    goto :goto_0

    .line 86
    .restart local v0    # "contactReference":Lcom/google/majel/proto/ContactProtos$ContactReference;
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasMultipleEndpoints(Lcom/google/majel/proto/ContactProtos$ContactReference;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 88
    sget-object v5, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Endpoint disambiguation."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 89
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->hasAtleastOneContact(Lcom/google/majel/proto/ContactProtos$ContactReference;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 91
    sget-object v5, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Making a launch decision"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v5, p1, Lcom/google/majel/proto/ModularActionProtos$ModularAction;->prompts:Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    iget-object v5, v5, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->performSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {p0, v1, v0, v5}, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->makeLaunchDecision(Lcom/google/majel/proto/ModularActionProtos$UserIntent;Lcom/google/majel/proto/ContactProtos$ContactReference;Lcom/google/majel/proto/ModularActionProtos$ResourceSet;)Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v5

    goto :goto_0

    .line 94
    :cond_4
    sget-object v5, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Get Contact details."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 97
    .end local v0    # "contactReference":Lcom/google/majel/proto/ContactProtos$ContactReference;
    :cond_5
    iget-object v5, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->next:Lcom/google/glass/voice/actions/ActionDecisionMakerLink;

    if-eqz v5, :cond_1

    .line 98
    iget-object v5, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->next:Lcom/google/glass/voice/actions/ActionDecisionMakerLink;

    invoke-interface {v5, p1}, Lcom/google/glass/voice/actions/ActionDecisionMakerLink;->makeActionDecision(Lcom/google/majel/proto/ModularActionProtos$ModularAction;)Lcom/google/glass/voice/actions/ActionDecision;

    move-result-object v5

    goto :goto_0
.end method

.method public setNext(Lcom/google/glass/voice/actions/ActionDecisionMakerLink;)Lcom/google/glass/voice/actions/ActionDecisionMakerLink;
    .locals 0
    .param p1, "decisionMakerLink"    # Lcom/google/glass/voice/actions/ActionDecisionMakerLink;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/glass/voice/actions/CommunicationActionDecisionMaker;->next:Lcom/google/glass/voice/actions/ActionDecisionMakerLink;

    .line 244
    return-object p0
.end method
