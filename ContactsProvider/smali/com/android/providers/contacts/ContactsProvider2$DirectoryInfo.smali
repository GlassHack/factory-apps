.class Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryInfo"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field authority:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactsProvider2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/contacts/ContactsProvider2$1;

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;-><init>()V

    return-void
.end method
