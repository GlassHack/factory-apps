.class public final Lcom/google/android/gsf/TalkContract$Contacts;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/TalkContract$ContactsColumns;
.implements Lcom/google/android/gsf/TalkContract$PresenceColumns;
.implements Lcom/google/android/gsf/TalkContract$ChatsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contacts"
.end annotation


# static fields
.field public static final AVATAR_DATA:Ljava/lang/String; = "avatars_data"

.field public static final AVATAR_HASH:Ljava/lang/String; = "avatars_hash"

.field public static final CHATS_CONTACT:Ljava/lang/String; = "chats_contact"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/gtalk-contacts"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/gtalk-contacts"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri;

.field public static final CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

.field public static final CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

.field public static final CONTENT_URI_CONTACT_ID:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "subscriptionType DESC, (chats._id != 0) DESC, chats._id DESC, mode DESC, nickname COLLATE UNICODE ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    const-string v0, "content://com.google.android.providers.talk/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 412
    const-string v0, "content://com.google.android.providers.talk/contacts_barebone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    .line 418
    const-string v0, "content://com.google.android.providers.talk/contacts_chatting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    .line 424
    const-string v0, "content://com.google.android.providers.talk/contacts/blocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri;

    .line 430
    const-string v0, "content://com.google.android.providers.talk/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACT_ID:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
