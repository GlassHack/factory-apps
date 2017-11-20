.class public final Lcom/google/android/gsf/TalkContract$Messages;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/TalkContract$MessageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messages"
.end annotation


# static fields
.field public static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/gtalk-messages"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/gtalk-messages"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

.field public static final CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

.field public static final CONTENT_URI_MESSAGES_BY_THREAD_ID:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date ASC"

.field public static final OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

.field public static final OTR_MESSAGES_CONTENT_URI_BY_THREAD_ID:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 808
    const-string v0, "content://com.google.android.providers.talk/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    .line 814
    const-string v0, "content://com.google.android.providers.talk/messagesByThreadId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_THREAD_ID:Landroid/net/Uri;

    .line 820
    const-string v0, "content://com.google.android.providers.talk/messagesByAcctAndContact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

    .line 826
    const-string v0, "content://com.google.android.providers.talk/messagesByAccount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    .line 832
    const-string v0, "content://com.google.android.providers.talk/otrMessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 838
    const-string v0, "content://com.google.android.providers.talk/otrMessagesByThreadId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_THREAD_ID:Landroid/net/Uri;

    .line 844
    const-string v0, "content://com.google.android.providers.talk/otrMessagesByAcctAndContact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

    .line 850
    const-string v0, "content://com.google.android.providers.talk/otrMessagesByAccount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUriByAccount(J)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # J

    .prologue
    .line 759
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 760
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 761
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # J
    .param p2, "username"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 746
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 747
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 748
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 749
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final getContentUriByThreadId(J)Landroid/net/Uri;
    .locals 2
    .param p0, "threadId"    # J

    .prologue
    .line 730
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI_MESSAGES_BY_THREAD_ID:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 731
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 732
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final getOtrMessagesContentUriByAccount(J)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # J

    .prologue
    .line 800
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 801
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 802
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final getOtrMessagesContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # J
    .param p2, "username"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 787
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_ACCOUNT_AND_CONTACT:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 788
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 789
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 790
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static final getOtrMessagesContentUriByThreadId(J)Landroid/net/Uri;
    .locals 2
    .param p0, "threadId"    # J

    .prologue
    .line 771
    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI_BY_THREAD_ID:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 772
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 773
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
