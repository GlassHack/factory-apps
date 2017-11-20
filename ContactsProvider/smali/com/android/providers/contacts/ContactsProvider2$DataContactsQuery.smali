.class interface abstract Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "DataContactsQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 444
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contacts._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "accounts.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accounts.account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "accounts.data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data._id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contacts._id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
