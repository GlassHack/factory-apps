.class public Lcom/android/providers/contacts/ContactsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization205Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructName205Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Projections;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field private static sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# instance fields
.field private mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mCharArrayBuffer:Landroid/database/CharArrayBuffer;

.field private mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mContext:Landroid/content/Context;

.field private final mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

.field private mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDatabaseOptimizationEnabled:Z

.field private mMimeTypeIdEmail:J

.field private mMimeTypeIdIm:J

.field private mMimeTypeIdNickname:J

.field private mMimeTypeIdOrganization:J

.field private mMimeTypeIdPhone:J

.field private mMimeTypeIdSip:J

.field private mMimeTypeIdStructuredName:J

.field private mMimeTypeIdStructuredPostal:J

.field private final mMimetypeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Lcom/android/providers/contacts/NameSplitter$Name;

.field private mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private final mPackageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

.field private final mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

.field private mUseStrictPhoneNumberComparison:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "optimizationEnabled"    # Z

    .prologue
    .line 799
    const/4 v1, 0x0

    const/16 v2, 0x323

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 729
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    .line 732
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    .line 777
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    .line 778
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mName:Lcom/android/providers/contacts/NameSplitter$Name;

    .line 779
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    .line 800
    iput-boolean p3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseOptimizationEnabled:Z

    .line 801
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 803
    .local v0, "resources":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 804
    new-instance v1, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v1}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 805
    new-instance v1, Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct {v1, p1}, Lcom/android/providers/contacts/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    .line 806
    const v1, 0x1110025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    .line 809
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # I
    .param p7, "x5"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    return-void
.end method

.method private static addJoinExpressionAllowingNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "column1"    # Ljava/lang/String;
    .param p2, "column2"    # Ljava/lang/String;

    .prologue
    .line 4087
    const-string v0, "((("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4088
    const-string v0, "))OR(("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4089
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") IS NULL AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") IS NULL))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4090
    return-object p0
.end method

.method private appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "numberE164"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4827
    const-string v5, "lookup.data_id=data._id AND data.raw_contact_id=raw_contacts._id"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4828
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move v1, v3

    .line 4829
    .local v1, "hasNumberE164":Z
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v3

    .line 4830
    .local v0, "hasNumber":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_4

    .line 4831
    :cond_0
    const-string v3, " AND ( "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4832
    if-eqz v1, :cond_1

    .line 4833
    const-string v3, " lookup.normalized_number = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4834
    invoke-static {p1, p3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4836
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 4837
    const-string v3, " OR "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4839
    :cond_2
    if-eqz v0, :cond_3

    .line 4841
    iget-boolean v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    if-nez v3, :cond_7

    .line 4842
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4843
    .local v2, "numberLen":I
    const-string v3, " lookup.len <= "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4844
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4845
    const-string v3, " AND substr("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4846
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4847
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4848
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4849
    const-string v3, " - lookup.len + 1) = lookup.normalized_number"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4855
    const-string v3, " OR ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4856
    const-string v3, " lookup.len > "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4857
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4858
    const-string v3, " AND substr(lookup.normalized_number,"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4859
    const-string v3, "lookup.len + 1 - "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4860
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4861
    const-string v3, ") = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4862
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4863
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4868
    .end local v2    # "numberLen":I
    :cond_3
    :goto_2
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4870
    :cond_4
    return-void

    .end local v0    # "hasNumber":Z
    .end local v1    # "hasNumberE164":Z
    :cond_5
    move v1, v4

    .line 4828
    goto :goto_0

    .restart local v1    # "hasNumberE164":Z
    :cond_6
    move v0, v4

    .line 4829
    goto :goto_1

    .line 4865
    .restart local v0    # "hasNumber":Z
    :cond_7
    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "minMatch"    # Ljava/lang/String;
    .param p3, "joinContacts"    # Z

    .prologue
    .line 4814
    const-string v0, "raw_contacts"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4815
    if-eqz p3, :cond_0

    .line 4816
    const-string v0, " JOIN view_contacts contacts_view ON (contacts_view._id = raw_contacts.contact_id)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4819
    :cond_0
    const-string v0, ", (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE (phone_lookup.min_match = \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4822
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4823
    const-string v0, "\')) AS lookup, data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4824
    return-void
.end method

.method private bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Number;

    .prologue
    .line 4075
    if-nez p3, :cond_0

    .line 4076
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 4080
    :goto_0
    return-void

    .line 4078
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 4067
    if-nez p3, :cond_0

    .line 4068
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 4072
    :goto_0
    return-void

    .line 4070
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "contactIdColumn"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CASE WHEN photo_file_id IS NULL THEN (CASE WHEN photo_id IS NULL OR photo_id=0 THEN NULL ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\'||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|| \'/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END) ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\'||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo_file_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "contactIdColumn"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CASE WHEN photo_id IS NULL OR photo_id=0 THEN NULL ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\'||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|| \'/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "toValues"    # Landroid/content/ContentValues;
    .param p1, "toKey"    # Ljava/lang/String;
    .param p2, "fromValues"    # Landroid/content/ContentValues;
    .param p3, "fromKey"    # Ljava/lang/String;

    .prologue
    .line 4923
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4925
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4926
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 4927
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4928
    const-wide/16 v0, 0x1

    .line 4937
    .local v0, "longValue":J
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4939
    .end local v0    # "longValue":J
    :cond_0
    return-void

    .line 4930
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0    # "longValue":J
    goto :goto_0

    .line 4932
    .end local v0    # "longValue":J
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 4933
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .restart local v0    # "longValue":J
    goto :goto_0

    .line 4935
    .end local v0    # "longValue":J
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0    # "longValue":J
    goto :goto_0
.end method

.method public static copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "toValues"    # Landroid/content/ContentValues;
    .param p1, "toKey"    # Ljava/lang/String;
    .param p2, "fromValues"    # Landroid/content/ContentValues;
    .param p3, "fromKey"    # Ljava/lang/String;

    .prologue
    .line 4916
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4917
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4919
    :cond_0
    return-void
.end method

.method private createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rebuildSqliteStats"    # Z

    .prologue
    .line 1549
    const-string v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1550
    const-string v0, "CREATE INDEX name_lookup_index ON name_lookup (normalized_name,name_type, raw_contact_id, data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1557
    const-string v0, "DROP INDEX IF EXISTS raw_contact_sort_key1_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1558
    const-string v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (sort_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1562
    const-string v0, "DROP INDEX IF EXISTS raw_contact_sort_key2_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1563
    const-string v0, "CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (sort_key_alt);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1567
    if-eqz p2, :cond_0

    .line 1568
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1570
    :cond_0
    return-void
.end method

.method private createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1416
    const-string v3, "DROP TRIGGER IF EXISTS raw_contacts_deleted;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1417
    const-string v3, "CREATE TRIGGER raw_contacts_deleted    BEFORE DELETE ON raw_contacts BEGIN    DELETE FROM data     WHERE raw_contact_id=OLD._id;   DELETE FROM agg_exceptions     WHERE raw_contact_id1=OLD._id        OR raw_contact_id2=OLD._id;   DELETE FROM visible_contacts     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1;   DELETE FROM default_directory     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1;   DELETE FROM contacts     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1; END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1446
    const-string v3, "DROP TRIGGER IF EXISTS contacts_times_contacted;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1447
    const-string v3, "DROP TRIGGER IF EXISTS raw_contacts_times_contacted;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1454
    const-string v3, "DROP TRIGGER IF EXISTS raw_contacts_marked_deleted;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1455
    const-string v3, "CREATE TRIGGER raw_contacts_marked_deleted    AFTER UPDATE ON raw_contacts BEGIN    UPDATE raw_contacts     SET version=OLD.version+1      WHERE _id=OLD._id       AND NEW.deleted!= OLD.deleted; END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1465
    const-string v3, "DROP TRIGGER IF EXISTS data_updated;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1466
    const-string v3, "CREATE TRIGGER data_updated AFTER UPDATE ON data BEGIN    UPDATE data     SET data_version=OLD.data_version+1      WHERE _id=OLD._id;   UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id; END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1476
    const-string v3, "DROP TRIGGER IF EXISTS data_deleted;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1477
    const-string v3, "CREATE TRIGGER data_deleted BEFORE DELETE ON data BEGIN    UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id;   DELETE FROM phone_lookup     WHERE data_id=OLD._id;   DELETE FROM status_updates     WHERE status_update_data_id=OLD._id;   DELETE FROM name_lookup     WHERE data_id=OLD._id; END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1491
    const-string v3, "DROP TRIGGER IF EXISTS groups_updated1;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1492
    const-string v3, "CREATE TRIGGER groups_updated1    AFTER UPDATE ON groups BEGIN    UPDATE groups     SET version=OLD.version+1     WHERE _id=OLD._id; END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1503
    const-string v2, " INSERT OR IGNORE INTO default_directory     SELECT contact_id     FROM raw_contacts     WHERE raw_contacts.account_id=(SELECT _id FROM accounts WHERE account_name IS NULL AND account_type IS NULL AND data_set IS NULL);"

    .line 1509
    .local v2, "insertContactsWithoutAccount":Ljava/lang/String;
    const-string v1, " INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     WHERE NOT EXISTS         (SELECT _id             FROM groups             WHERE raw_contacts.account_id = groups.account_id             AND auto_add != 0);"

    .line 1519
    .local v1, "insertContactsWithAccountNoDefaultGroup":Ljava/lang/String;
    const-string v0, " INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     JOIN data           ON (raw_contacts._id=raw_contact_id)     WHERE mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/group_membership\')     AND EXISTS         (SELECT _id             FROM groups                 WHERE raw_contacts.account_id = groups.account_id                 AND auto_add != 0);"

    .line 1537
    .local v0, "insertContactsWithAccountDefaultGroup":Ljava/lang/String;
    const-string v3, "DROP TRIGGER IF EXISTS groups_auto_add_updated1;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1538
    const-string v3, "CREATE TRIGGER groups_auto_add_updated1    AFTER UPDATE OF auto_add ON groups BEGIN    DELETE FROM default_directory; INSERT OR IGNORE INTO default_directory     SELECT contact_id     FROM raw_contacts     WHERE raw_contacts.account_id=(SELECT _id FROM accounts WHERE account_name IS NULL AND account_type IS NULL AND data_set IS NULL); INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     WHERE NOT EXISTS         (SELECT _id             FROM groups             WHERE raw_contacts.account_id = groups.account_id             AND auto_add != 0); INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     JOIN data           ON (raw_contacts._id=raw_contact_id)     WHERE mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/group_membership\')     AND EXISTS         (SELECT _id             FROM groups                 WHERE raw_contacts.account_id = groups.account_id                 AND auto_add != 0); END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1546
    return-void
.end method

.method private createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1573
    const-string v15, "DROP VIEW IF EXISTS view_contacts;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1574
    const-string v15, "DROP VIEW IF EXISTS view_data;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1575
    const-string v15, "DROP VIEW IF EXISTS view_raw_contacts;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1576
    const-string v15, "DROP VIEW IF EXISTS view_raw_entities;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1577
    const-string v15, "DROP VIEW IF EXISTS view_entities;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1578
    const-string v15, "DROP VIEW IF EXISTS view_data_usage_stat;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1579
    const-string v15, "DROP VIEW IF EXISTS view_stream_items;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1581
    const-string v6, "is_primary, is_super_primary, data_version, data.package_id,package AS res_package,data.mimetype_id,mimetype AS mimetype, is_read_only, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data_sync1, data_sync2, data_sync3, data_sync4"

    .line 1610
    .local v6, "dataColumns":Ljava/lang/String;
    const-string v14, "raw_contacts.account_id,accounts.account_name AS account_name,accounts.account_type AS account_type,accounts.data_set AS data_set,(CASE WHEN accounts.data_set IS NULL THEN accounts.account_type ELSE accounts.account_type||\'/\'||accounts.data_set END) AS account_type_and_data_set,raw_contacts.sourceid AS sourceid,raw_contacts.name_verified AS name_verified,raw_contacts.version AS version,raw_contacts.dirty AS dirty,raw_contacts.sync1 AS sync1,raw_contacts.sync2 AS sync2,raw_contacts.sync3 AS sync3,raw_contacts.sync4 AS sync4"

    .line 1630
    .local v14, "syncColumns":Ljava/lang/String;
    const-string v1, "has_phone_number, name_raw_contact_id, lookup, photo_id, photo_file_id, CAST(EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS INTEGER) AS in_visible_group, status_update_id, contacts.contact_last_updated_timestamp"

    .line 1641
    .local v1, "baseContactColumns":Ljava/lang/String;
    const-string v3, "contacts.custom_ringtone AS custom_ringtone,contacts.send_to_voicemail AS send_to_voicemail,contacts.last_time_contacted AS last_time_contacted,contacts.times_contacted AS times_contacted,contacts.starred AS starred,contacts.pinned AS pinned"

    .line 1655
    .local v3, "contactOptionColumns":Ljava/lang/String;
    const-string v2, "name_raw_contact.display_name_source AS display_name_source, name_raw_contact.display_name AS display_name, name_raw_contact.display_name_alt AS display_name_alt, name_raw_contact.phonetic_name AS phonetic_name, name_raw_contact.phonetic_name_style AS phonetic_name_style, name_raw_contact.sort_key AS sort_key, name_raw_contact.phonebook_label AS phonebook_label, name_raw_contact.phonebook_bucket AS phonebook_bucket, name_raw_contact.sort_key_alt AS sort_key_alt, name_raw_contact.phonebook_label_alt AS phonebook_label_alt, name_raw_contact.phonebook_bucket_alt AS phonebook_bucket_alt"

    .line 1679
    .local v2, "contactNameColumns":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT data._id AS _id,raw_contact_id, raw_contacts.contact_id AS contact_id, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    const-string v17, "photo_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    const-string v17, "photo_thumb_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contact_is_user_profile"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "group_sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.mimetype_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "accounts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.account_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "accounts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS name_raw_contact ON("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "name_raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=name_raw_contact."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.package_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes.mimetype"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "vnd.android.cursor.item/group_membership"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' AND "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1713
    .local v7, "dataSelect":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_data AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1715
    const-string v10, "custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,pinned"

    .line 1723
    .local v10, "rawContactOptionColumns":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT raw_contacts._id AS _id,contact_id, aggregation_mode, raw_contact_is_read_only, deleted, display_name_source, display_name, display_name_alt, phonetic_name, phonetic_name_style, sort_key, phonebook_label, phonebook_bucket, sort_key_alt, phonebook_label_alt, phonebook_bucket_alt, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contact_is_user_profile"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "accounts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.account_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "accounts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1748
    .local v11, "rawContactsSelect":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_raw_contacts AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1750
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "contacts.custom_ringtone AS custom_ringtone, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts.last_time_contacted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "last_time_contacted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts.send_to_voicemail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "send_to_voicemail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts.starred"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "starred"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts.pinned"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "pinned"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts.times_contacted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "times_contacted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1766
    .local v4, "contactsColumns":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT contacts._id AS _id,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts._id"

    const-string v17, "photo_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts._id"

    const-string v17, "photo_thumb_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "is_user_profile"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS name_raw_contact ON("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "name_raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=name_raw_contact."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1777
    .local v5, "contactsSelect":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_contacts AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1779
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT contact_id, raw_contacts.deleted AS deleted,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync3"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync4"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.starred"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "starred"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contact_is_user_profile"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "group_sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "accounts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.account_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "accounts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.package_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.mimetype_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes.mimetype"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "vnd.android.cursor.item/group_membership"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' AND "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1808
    .local v12, "rawEntitiesSelect":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_raw_entities AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1811
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT raw_contacts.contact_id AS _id, raw_contacts.contact_id AS contact_id, raw_contacts.deleted AS deleted,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    const-string v17, "photo_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    const-string v17, "photo_thumb_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "is_user_profile"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync3"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync4"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "group_sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "accounts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.account_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "accounts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS name_raw_contact ON("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "name_raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=name_raw_contact."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.package_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.mimetype_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes.mimetype"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "vnd.android.cursor.item/group_membership"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' AND "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1849
    .local v9, "entitiesSelect":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_entities AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1852
    const-string v8, "SELECT data_usage_stat.stat_id AS stat_id, data_id, raw_contacts.contact_id AS contact_id, mimetypes.mimetype AS mimetype, usage_type, times_used, last_time_used FROM data_usage_stat JOIN data ON (data._id=data_usage_stat.data_id) JOIN raw_contacts ON (raw_contacts._id=data.raw_contact_id ) JOIN mimetypes ON (mimetypes._id=data.mimetype_id)"

    .line 1869
    .local v8, "dataUsageStatSelect":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_data_usage_stat AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1871
    const-string v13, "SELECT stream_items._id, contacts._id AS contact_id, contacts.lookup AS contact_lookup, accounts.account_name, accounts.account_type, accounts.data_set, stream_items.raw_contact_id as raw_contact_id, raw_contacts.sourceid as raw_contact_source_id, stream_items.res_package, stream_items.icon, stream_items.label, stream_items.text, stream_items.timestamp, stream_items.comments, stream_items.stream_item_sync1, stream_items.stream_item_sync2, stream_items.stream_item_sync3, stream_items.stream_item_sync4 FROM stream_items JOIN raw_contacts ON (stream_items.raw_contact_id=raw_contacts._id) JOIN accounts ON (raw_contacts.account_id=accounts._id) JOIN contacts ON (raw_contacts.contact_id=contacts._id)"

    .line 1903
    .local v13, "streamItemSelect":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_stream_items AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1904
    return-void
.end method

.method private createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1376
    const-string v0, "CREATE TABLE directories(_id INTEGER PRIMARY KEY AUTOINCREMENT,packageName TEXT NOT NULL,authority TEXT NOT NULL,typeResourceId INTEGER,typeResourceName TEXT,accountType TEXT,accountName TEXT,displayName TEXT, exportSupport INTEGER NOT NULL DEFAULT 0,shortcutSupport INTEGER NOT NULL DEFAULT 0,photoSupport INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1394
    const-string v0, "directoryScanComplete"

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    return-void
.end method

.method private createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1939
    const-string v2, "DROP VIEW IF EXISTS view_groups;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1941
    const-string v0, "groups.account_id AS account_id,accounts.account_name AS account_name,accounts.account_type AS account_type,accounts.data_set AS data_set,(CASE WHEN accounts.data_set IS NULL THEN accounts.account_type ELSE accounts.account_type||\'/\'||accounts.data_set END) AS account_type_and_data_set,sourceid,version,dirty,title,title_res,notes,system_id,deleted,group_visible,should_sync,auto_add,favorites,group_is_read_only,sync1,sync2,sync3,sync4,package AS res_package"

    .line 1970
    .local v0, "groupsColumns":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT groups._id AS _id,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "groups"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "accounts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "groups.account_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "accounts._id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT OUTER JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "groups.package_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packages._id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1979
    .local v1, "groupsSelect":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE VIEW view_groups AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1980
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 783
    const-class v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "contacts2.db"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 786
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getNewInstanceForTest(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 794
    new-instance v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private initializeCache(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 848
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 853
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdEmail:J

    .line 854
    const-string v0, "vnd.android.cursor.item/im"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdIm:J

    .line 855
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdNickname:J

    .line 856
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdOrganization:J

    .line 857
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdPhone:J

    .line 858
    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdSip:J

    .line 859
    const-string v0, "vnd.android.cursor.item/name"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    .line 860
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredPostal:J

    .line 861
    return-void
.end method

.method private insertEmailLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "nameLookupInsert"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3349
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v9

    .line 3350
    .local v9, "mimeTypeId":J
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3354
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3355
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3356
    .local v4, "dataId":J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3357
    .local v2, "rawContactId":J
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3358
    .local v7, "address":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3359
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3363
    .end local v2    # "rawContactId":J
    .end local v4    # "dataId":J
    .end local v7    # "address":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3365
    return-void
.end method

.method private insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3221
    const-string v1, "DELETE FROM name_lookup"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3223
    const-string v1, "INSERT OR IGNORE INTO name_lookup(raw_contact_id,data_id,name_type,normalized_name) VALUES (?,?,?,?)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3232
    .local v0, "nameLookupInsert":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 3233
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertEmailLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 3234
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNicknameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3236
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3238
    return-void

    .line 3236
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method private insertNicknameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "nameLookupInsert"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3388
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v9

    .line 3389
    .local v9, "mimeTypeId":J
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3393
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3394
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3395
    .local v4, "dataId":J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3396
    .local v2, "rawContactId":J
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3397
    .local v7, "nickname":Ljava/lang/String;
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3401
    .end local v2    # "rawContactId":J
    .end local v4    # "dataId":J
    .end local v7    # "nickname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3403
    return-void
.end method

.method private insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "rawContactId"    # J
    .param p4, "dataId"    # J
    .param p6, "lookupType"    # I
    .param p7, "normalizedName"    # Ljava/lang/String;

    .prologue
    .line 3424
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3425
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3426
    const/4 v0, 0x3

    int-to-long v1, p6

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3427
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 3428
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 3429
    return-void
.end method

.method private insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "nameLookupInsert"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 3288
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v12

    .line 3289
    .local v12, "nameSplitter":Lcom/android/providers/contacts/NameSplitter;
    new-instance v11, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;

    new-instance v0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v11, p0, v12, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;Landroid/database/sqlite/SQLiteStatement;)V

    .line 3291
    .local v11, "nameLookupBuilder":Lcom/android/providers/contacts/NameLookupBuilder;
    const-string v0, "vnd.android.cursor.item/name"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v9

    .line 3292
    .local v9, "mimeTypeId":J
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3296
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3297
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3298
    .local v3, "dataId":J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3299
    .local v1, "rawContactId":J
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3300
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v12, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v6

    .line 3301
    .local v6, "fullNameStyle":I
    invoke-virtual {v12, v6}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    move-object v0, v11

    .line 3302
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3305
    .end local v1    # "rawContactId":J
    .end local v3    # "dataId":J
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "fullNameStyle":I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3307
    return-void
.end method

.method public static isInProjection([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 4987
    if-nez p0, :cond_1

    .line 4995
    :cond_0
    :goto_0
    return v4

    .line 4990
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 4991
    .local v3, "test":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4990
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4995
    .end local v3    # "test":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static varargs isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5002
    if-nez p0, :cond_1

    .line 5018
    :cond_0
    :goto_0
    return v8

    .line 5007
    :cond_1
    array-length v10, p1

    if-ne v10, v8, :cond_2

    .line 5008
    aget-object v8, p1, v9

    invoke-static {p0, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto :goto_0

    .line 5010
    :cond_2
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v7, v0, v4

    .line 5011
    .local v7, "test":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v2, v1, v3

    .line 5012
    .local v2, "column":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 5011
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5010
    .end local v2    # "column":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "test":Ljava/lang/String;
    :cond_4
    move v8, v9

    .line 5018
    goto :goto_0
.end method

.method private loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4880
    const-string v7, "DELETE FROM nickname_lookup"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4882
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 4884
    .local v6, "strings":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-nez v7, :cond_1

    .line 4912
    :cond_0
    :goto_0
    return-void

    .line 4888
    :cond_1
    const-string v7, "INSERT INTO nickname_lookup(name,cluster) VALUES (?,?)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 4893
    .local v5, "nicknameLookupInsert":Landroid/database/sqlite/SQLiteStatement;
    const/4 v0, 0x0

    .local v0, "clusterId":I
    :goto_1
    :try_start_0
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 4894
    aget-object v7, v6, v0

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4895
    .local v4, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v7, v4

    if-ge v2, v7, :cond_2

    .line 4896
    aget-object v7, v4, v2

    invoke-static {v7}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 4898
    .local v3, "name":Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v5, v7, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4899
    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4901
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4895
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4902
    :catch_0
    move-exception v1

    .line 4905
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v7, "ContactsDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert nickname: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 4910
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v2    # "j":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "names":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v7

    .line 4893
    .restart local v2    # "j":I
    .restart local v4    # "names":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4910
    .end local v2    # "j":I
    .end local v4    # "names":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0
.end method

.method private lookupAndCacheId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J
    .locals 6
    .param p1, "query"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "insert"    # Landroid/database/sqlite/SQLiteStatement;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p4, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x1

    .line 4342
    const-wide/16 v1, -0x1

    .line 4345
    .local v1, "id":J
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p1, v3, p3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4346
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4352
    :goto_0
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 4354
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p4, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4355
    return-wide v1

    .line 4347
    :catch_0
    move-exception v0

    .line 4349
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    invoke-static {p2, v4, p3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4350
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1

    goto :goto_0

    .line 4358
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find or create internal lookup table entry for value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 4055
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT _id FROM mimetypes WHERE mimetype=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4062
    :goto_0
    return-wide v1

    .line 4060
    :catch_0
    move-exception v0

    .line 4062
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4400
    const-string v2, "SELECT _id FROM mimetypes WHERE mimetype=?"

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4405
    .local v1, "mimetypeQuery":Landroid/database/sqlite/SQLiteStatement;
    const-string v2, "INSERT INTO mimetypes(mimetype) VALUES (?)"

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4411
    .local v0, "mimetypeInsert":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupAndCacheId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4413
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4414
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v2

    .line 4413
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4414
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method private rebuildLocaleData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Locale;Z)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "rebuildSqliteStats"    # Z

    .prologue
    .line 3162
    const-string v0, "DROP INDEX raw_contact_sort_key1_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3163
    const-string v0, "DROP INDEX raw_contact_sort_key2_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3164
    const-string v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3166
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3167
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3168
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3169
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3171
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/FastScrollingIndexCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/FastScrollingIndexCache;->invalidate()V

    .line 3174
    const-string v0, "icu_version"

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    const-string v0, "locale"

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    return-void
.end method

.method private rebuildNameLookup(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rebuildSqliteStats"    # Z

    .prologue
    .line 3116
    const-string v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3117
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3118
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3119
    return-void
.end method

.method private rebuildSearchIndex(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rebuildSqliteStats"    # Z

    .prologue
    .line 3126
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3127
    const-string v0, "search_index"

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    return-void
.end method

.method private rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3208
    const-string v1, "raw_contacts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3211
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3212
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3213
    .local v9, "rawContactId":J
    invoke-virtual {p0, p1, v9, v10}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3216
    .end local v9    # "rawContactId":J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3218
    return-void
.end method

.method private refreshDatabaseCaches(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v0, 0x0

    .line 821
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 822
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 823
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 824
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    .line 825
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 826
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    .line 827
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 828
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 829
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 830
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 831
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 832
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 833
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 834
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 835
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 836
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 838
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->initializeCache(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 839
    return-void
.end method

.method private setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 4977
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4978
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "property_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4979
    const-string v1, "property_value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4980
    const-string v1, "properties"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4981
    return-void
.end method

.method private updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "optionalContactId"    # J

    .prologue
    .line 4676
    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    .line 4677
    .local v1, "groupMembershipMimetypeId":J
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4679
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_0

    const-string v0, ""

    .line 4685
    .local v0, "contactIdSelect":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM visible_contacts WHERE _id IN(SELECT _id FROM contacts WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_id=(SELECT _id FROM accounts WHERE account_name IS NULL AND account_type IS NULL AND data_set IS NULL) THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts JOIN accounts ON (raw_contacts.account_id=accounts._id)LEFT OUTER JOIN settings ON (accounts.account_name=settings.account_name AND accounts.account_type=settings.account_type AND ((accounts.data_set IS NULL AND settings.data_set IS NULL) OR (accounts.data_set=settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id=contacts._id GROUP BY contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")=0) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO visible_contacts SELECT _id FROM contacts WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NOT IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "visible_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_id=(SELECT _id FROM accounts WHERE account_name IS NULL AND account_type IS NULL AND data_set IS NULL) THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts JOIN accounts ON (raw_contacts.account_id=accounts._id)LEFT OUTER JOIN settings ON (accounts.account_name=settings.account_name AND accounts.account_type=settings.account_type AND ((accounts.data_set IS NULL AND settings.data_set IS NULL) OR (accounts.data_set=settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id=contacts._id GROUP BY contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")=1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4702
    return-void

    .line 4679
    .end local v0    # "contactIdSelect":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "index"    # Ljava/lang/String;
    .param p4, "stats"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4263
    if-nez p3, :cond_0

    .line 4264
    const-string v0, "DELETE FROM sqlite_stat1 WHERE tbl=? AND idx IS NULL"

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4270
    :goto_0
    const-string v0, "INSERT INTO sqlite_stat1 (tbl,idx,stat) VALUES (?,?,?)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    aput-object p4, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4272
    return-void

    .line 4267
    :cond_0
    const-string v0, "DELETE FROM sqlite_stat1 WHERE tbl=? AND idx=?"

    new-array v1, v4, [Ljava/lang/String;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rawContactUpdate"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "rawContactId"    # J
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "displayNameAlternative"    # Ljava/lang/String;
    .param p6, "phoneticNameStyle"    # I
    .param p7, "phoneticName"    # Ljava/lang/String;
    .param p8, "sortKeyPrimary"    # Ljava/lang/String;
    .param p9, "sortKeyAlternative"    # Ljava/lang/String;

    .prologue
    .line 2916
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2917
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2918
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2919
    const/4 v0, 0x4

    int-to-long v1, p6

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2920
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2921
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2922
    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2923
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2924
    return-void
.end method

.method private updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4100
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseOptimizationEnabled:Z

    if-nez v1, :cond_0

    .line 4252
    :goto_0
    return-void

    .line 4141
    :cond_0
    :try_start_0
    const-string v1, "DELETE FROM sqlite_stat1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4142
    const-string v1, "contacts"

    const-string v2, "contacts_has_phone_index"

    const-string v3, "9000 500"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4144
    const-string v1, "contacts"

    const-string v2, "contacts_name_raw_contact_id_index"

    const-string v3, "9000 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4146
    const-string v1, "contacts"

    const-string v2, "contacts"

    const-string v3, "contact_last_updated_timestamp"

    invoke-static {v2, v3}, Lcom/android/providers/contacts/database/MoreDatabaseUtils;->buildIndexName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "9000 10"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    const-string v1, "raw_contacts"

    const-string v2, "raw_contacts_contact_id_index"

    const-string v3, "10000 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4151
    const-string v1, "raw_contacts"

    const-string v2, "raw_contact_sort_key2_index"

    const-string v3, "10000 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4153
    const-string v1, "raw_contacts"

    const-string v2, "raw_contact_sort_key1_index"

    const-string v3, "10000 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    const-string v1, "raw_contacts"

    const-string v2, "raw_contacts_source_id_account_id_index"

    const-string v3, "10000 1 1 1 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4158
    const-string v1, "name_lookup"

    const-string v2, "name_lookup_raw_contact_id_index"

    const-string v3, "35000 4"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4160
    const-string v1, "name_lookup"

    const-string v2, "name_lookup_index"

    const-string v3, "35000 2 2 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4162
    const-string v1, "name_lookup"

    const-string v2, "sqlite_autoindex_name_lookup_1"

    const-string v3, "35000 3 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4165
    const-string v1, "phone_lookup"

    const-string v2, "phone_lookup_index"

    const-string v3, "3500 3 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    const-string v1, "phone_lookup"

    const-string v2, "phone_lookup_min_match_index"

    const-string v3, "3500 3 2 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4169
    const-string v1, "phone_lookup"

    const-string v2, "phone_lookup_data_id_min_match_index"

    const-string v3, "3500 2 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4172
    const-string v1, "data"

    const-string v2, "data_mimetype_data1_index"

    const-string v3, "60000 5000 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4174
    const-string v1, "data"

    const-string v2, "data_raw_contact_id"

    const-string v3, "60000 10"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4177
    const-string v1, "groups"

    const-string v2, "groups_source_id_account_id_index"

    const-string v3, "50 2 2 1 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4180
    const-string v1, "nickname_lookup"

    const-string v2, "nickname_lookup_index"

    const-string v3, "500 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    const-string v1, "calls"

    const/4 v2, 0x0

    const-string v3, "250"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4186
    const-string v1, "status_updates"

    const/4 v2, 0x0

    const-string v3, "100"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4189
    const-string v1, "stream_items"

    const/4 v2, 0x0

    const-string v3, "500"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4191
    const-string v1, "stream_item_photos"

    const/4 v2, 0x0

    const-string v3, "50"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4194
    const-string v1, "voicemail_status"

    const/4 v2, 0x0

    const-string v3, "5"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4197
    const-string v1, "accounts"

    const/4 v2, 0x0

    const-string v3, "3"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4200
    const-string v1, "visible_contacts"

    const/4 v2, 0x0

    const-string v3, "2000"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4203
    const-string v1, "photo_files"

    const/4 v2, 0x0

    const-string v3, "50"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4206
    const-string v1, "default_directory"

    const/4 v2, 0x0

    const-string v3, "1500"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    const-string v1, "mimetypes"

    const-string v2, "mime_type"

    const-string v3, "18 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4212
    const-string v1, "data_usage_stat"

    const-string v2, "data_usage_stat_index"

    const-string v3, "20 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4216
    const-string v1, "agg_exceptions"

    const/4 v2, 0x0

    const-string v3, "10"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    const-string v1, "settings"

    const/4 v2, 0x0

    const-string v3, "10"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4220
    const-string v1, "packages"

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4222
    const-string v1, "directories"

    const/4 v2, 0x0

    const-string v3, "3"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4224
    const-string v1, "v1_settings"

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4226
    const-string v1, "android_metadata"

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4228
    const-string v1, "_sync_state"

    const-string v2, "sqlite_autoindex__sync_state_1"

    const-string v3, "2 1 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4230
    const-string v1, "_sync_state_metadata"

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4232
    const-string v1, "properties"

    const-string v2, "sqlite_autoindex_properties_1"

    const-string v3, "4 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    const-string v1, "search_index_docsize"

    const/4 v2, 0x0

    const-string v3, "9000"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4238
    const-string v1, "search_index_content"

    const/4 v2, 0x0

    const-string v3, "9000"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4240
    const-string v1, "search_index_stat"

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4242
    const-string v1, "search_index_segments"

    const/4 v2, 0x0

    const-string v3, "450"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4244
    const-string v1, "search_index_segdir"

    const-string v2, "sqlite_autoindex_search_index_segdir_1"

    const-string v3, "9 5 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4248
    const-string v1, "ANALYZE sqlite_master;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4249
    :catch_0
    move-exception v0

    .line 4250
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "ContactsDatabaseHelper"

    const-string v2, "Could not update index stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private upgradeEmailToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2964
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v13

    .line 2965
    .local v13, "mimeTypeId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_0

    .line 2993
    :goto_0
    return-void

    .line 2969
    :cond_0
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2972
    .local v18, "values":Landroid/content/ContentValues;
    const-string v3, "data"

    sget-object v4, Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;->COLUMNS:[Ljava/lang/String;

    const-string v5, "mimetype_id=? AND _id NOT IN (SELECT data_id FROM name_lookup) AND data1 NOT NULL"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2976
    .local v10, "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2977
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2978
    .local v11, "dataId":J
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2979
    .local v15, "rawContactId":J
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2980
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2982
    if-eqz v17, :cond_1

    .line 2983
    const-string v2, "data_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2984
    const-string v2, "raw_contact_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2985
    const-string v2, "name_type"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2986
    const-string v2, "normalized_name"

    invoke-static/range {v17 .. v17}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    const-string v2, "name_lookup"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2991
    .end local v11    # "dataId":J
    .end local v15    # "rawContactId":J
    .end local v17    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeLocaleData(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rebuildSqliteStats"    # Z

    .prologue
    .line 3151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 3152
    .local v0, "locale":Ljava/util/Locale;
    const-string v3, "ContactsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading locale data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (ICU v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3155
    .local v1, "start":J
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->initializeCache(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3156
    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildLocaleData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Locale;Z)V

    .line 3157
    const-string v3, "ContactsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locale update completed in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    return-void
.end method

.method private upgradeNameToVersion205(JJILjava/lang/String;Lcom/android/providers/contacts/NameSplitter$Name;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;Ljava/lang/StringBuilder;)V
    .locals 13
    .param p1, "dataId"    # J
    .param p3, "rawContactId"    # J
    .param p5, "displayNameSource"    # I
    .param p6, "currentDisplayName"    # Ljava/lang/String;
    .param p7, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p8, "structuredNameUpdate"    # Landroid/database/sqlite/SQLiteStatement;
    .param p9, "rawContactUpdate"    # Landroid/database/sqlite/SQLiteStatement;
    .param p10, "splitter"    # Lcom/android/providers/contacts/NameSplitter;
    .param p11, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2823
    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 2824
    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 2825
    .local v12, "unadjustedFullNameStyle":I
    move-object/from16 v0, p7

    iget v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v2

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 2826
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 2830
    .local v6, "displayName":Ljava/lang/String;
    const/4 v2, 0x1

    int-to-long v3, v12

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2831
    const/4 v2, 0x2

    move-object/from16 v0, p8

    invoke-static {v0, v2, v6}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 2832
    const/4 v2, 0x3

    move-object/from16 v0, p7

    iget v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    int-to-long v3, v3

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2833
    const/4 v2, 0x4

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2834
    invoke-virtual/range {p8 .. p8}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2836
    const/16 v2, 0x28

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    .line 2837
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v7

    .line 2838
    .local v7, "displayNameAlternative":Ljava/lang/String;
    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;

    move-result-object v9

    .line 2839
    .local v9, "phoneticName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2840
    .local v10, "sortKey":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2842
    .local v11, "sortKeyAlternative":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 2843
    move-object v11, v9

    move-object v10, v9

    .line 2849
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 2850
    move-object v10, v6

    .line 2851
    move-object v11, v7

    .line 2854
    :cond_1
    move-object/from16 v0, p7

    iget v8, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    move-object v2, p0

    move-object/from16 v3, p9

    move-wide/from16 v4, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    .end local v7    # "displayNameAlternative":Ljava/lang/String;
    .end local v9    # "phoneticName":Ljava/lang/String;
    .end local v10    # "sortKey":Ljava/lang/String;
    .end local v11    # "sortKeyAlternative":Ljava/lang/String;
    :cond_2
    return-void

    .line 2844
    .restart local v7    # "displayNameAlternative":Ljava/lang/String;
    .restart local v9    # "phoneticName":Ljava/lang/String;
    .restart local v10    # "sortKey":Ljava/lang/String;
    .restart local v11    # "sortKeyAlternative":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p7

    iget v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p7

    iget v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2846
    :cond_4
    move-object v11, v6

    move-object v10, v6

    goto :goto_0
.end method

.method private upgradeNicknameToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3000
    const-string v2, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v13

    .line 3001
    .local v13, "mimeTypeId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_0

    .line 3026
    :goto_0
    return-void

    .line 3005
    :cond_0
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 3008
    .local v18, "values":Landroid/content/ContentValues;
    const-string v3, "data"

    sget-object v4, Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;->COLUMNS:[Ljava/lang/String;

    const-string v5, "mimetype_id=? AND _id NOT IN (SELECT data_id FROM name_lookup) AND data1 NOT NULL"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3012
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3013
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 3014
    .local v11, "dataId":J
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 3015
    .local v15, "rawContactId":J
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3017
    .local v17, "value":Ljava/lang/String;
    const-string v2, "data_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3018
    const-string v2, "raw_contact_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3019
    const-string v2, "name_type"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3020
    const-string v2, "normalized_name"

    invoke-static/range {v17 .. v17}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3021
    const-string v2, "name_lookup"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3024
    .end local v11    # "dataId":J
    .end local v15    # "rawContactId":J
    .end local v17    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeOrganizationsToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 21
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactUpdate"    # Landroid/database/sqlite/SQLiteStatement;
    .param p3, "splitter"    # Lcom/android/providers/contacts/NameSplitter;

    .prologue
    .line 2878
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v16

    .line 2880
    .local v16, "mimeType":J
    const-string v3, "UPDATE data SET data10=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v18

    .line 2886
    .local v18, "organizationUpdate":Landroid/database/sqlite/SQLiteStatement;
    const-string v4, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    sget-object v5, Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization205Query;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mimetype_id="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " AND "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "display_name_source"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v8, 0x1e

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2891
    .local v13, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2892
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2893
    .local v14, "dataId":J
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2894
    .local v5, "rawContactId":J
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2895
    .local v7, "company":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2897
    .local v10, "phoneticName":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v9

    .line 2899
    .local v9, "phoneticNameStyle":I
    const/4 v3, 0x1

    int-to-long v0, v9

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2900
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2901
    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2903
    move-object v11, v7

    .local v11, "sortKey":Ljava/lang/String;
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object v8, v7

    move-object v12, v11

    .line 2905
    invoke-direct/range {v3 .. v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2909
    .end local v5    # "rawContactId":J
    .end local v7    # "company":Ljava/lang/String;
    .end local v9    # "phoneticNameStyle":I
    .end local v10    # "phoneticName":Ljava/lang/String;
    .end local v11    # "sortKey":Ljava/lang/String;
    .end local v14    # "dataId":J
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2911
    return-void
.end method

.method private upgradeStructuredNamesToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactUpdate"    # Landroid/database/sqlite/SQLiteStatement;
    .param p3, "splitter"    # Lcom/android/providers/contacts/NameSplitter;

    .prologue
    .line 2770
    :try_start_0
    const-string v2, "SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 2780
    .local v16, "mMimeType":J
    const-string v2, "UPDATE data SET data10=?,data1=?,data11=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 2788
    .local v10, "structuredNameUpdate":Landroid/database/sqlite/SQLiteStatement;
    new-instance v18, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct/range {v18 .. v18}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 2789
    .local v18, "name":Lcom/android/providers/contacts/NameSplitter$Name;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2790
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string v3, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    sget-object v4, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructName205Query;->COLUMNS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mimetype_id="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2794
    .local v14, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2795
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2796
    .local v3, "dataId":J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2797
    .local v5, "rawContactId":J
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2798
    .local v7, "displayNameSource":I
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2800
    .local v8, "displayName":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/NameSplitter$Name;->clear()V

    .line 2801
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 2802
    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 2803
    const/4 v2, 0x6

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 2804
    const/4 v2, 0x7

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 2805
    const/16 v2, 0x8

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 2806
    const/16 v2, 0x9

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 2807
    const/16 v2, 0xa

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 2808
    const/16 v2, 0xb

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v9, v18

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 2810
    invoke-direct/range {v2 .. v13}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeNameToVersion205(JJILjava/lang/String;Lcom/android/providers/contacts/NameSplitter$Name;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;Ljava/lang/StringBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2814
    .end local v3    # "dataId":J
    .end local v5    # "rawContactId":J
    .end local v7    # "displayNameSource":I
    .end local v8    # "displayName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2775
    .end local v10    # "structuredNameUpdate":Landroid/database/sqlite/SQLiteStatement;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "mMimeType":J
    .end local v18    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    :catch_0
    move-exception v15

    .line 2816
    :goto_1
    return-void

    .line 2814
    .restart local v10    # "structuredNameUpdate":Landroid/database/sqlite/SQLiteStatement;
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "mMimeType":J
    .restart local v18    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2577
    const-string v0, "ALTER TABLE phone_lookup ADD min_match TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2581
    const-string v0, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2587
    const-string v0, "phone_lookup"

    const-string v1, "phone_lookup_min_match_index"

    const-string v2, "10000 2 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    const-string v0, "UPDATE phone_lookup SET min_match=? WHERE data_id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 2596
    .local v12, "update":Landroid/database/sqlite/SQLiteStatement;
    const-string v1, "phone_lookup JOIN data ON (data_id=data._id)"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "data1"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2600
    .local v8, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2601
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2602
    .local v9, "dataId":J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2603
    .local v11, "number":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2604
    const/4 v0, 0x1

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2605
    const/4 v0, 0x2

    invoke-virtual {v12, v0, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2606
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2610
    .end local v9    # "dataId":J
    .end local v11    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2612
    return-void
.end method

.method private upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2619
    const-string v0, "DELETE FROM raw_contacts WHERE contact_id NOT NULL AND contact_id NOT IN (SELECT _id FROM contacts)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2624
    const-string v0, "ALTER TABLE contacts ADD name_raw_contact_id INTEGER REFERENCES raw_contacts(_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2627
    const-string v0, "ALTER TABLE raw_contacts ADD contact_in_visible_group INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2632
    const-string v0, "UPDATE contacts SET name_raw_contact_id=( SELECT _id FROM raw_contacts WHERE contact_id=contacts._id AND raw_contacts.display_name=contacts.display_name ORDER BY _id LIMIT 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2644
    const-string v0, "CREATE INDEX contacts_name_raw_contact_id_index ON contacts (name_raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2650
    const-string v0, "UPDATE contacts SET name_raw_contact_id=( SELECT _id FROM raw_contacts WHERE contact_id=contacts._id ORDER BY _id LIMIT 1) WHERE name_raw_contact_id IS NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2662
    const-string v0, "UPDATE contacts SET display_name=NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2669
    const-string v0, "UPDATE raw_contacts SET contact_in_visible_group=(SELECT in_visible_group FROM contacts WHERE _id=contact_id) WHERE contact_id NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2678
    const-string v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (contact_in_visible_group,display_name COLLATE LOCALIZED ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2683
    const-string v0, "DROP INDEX contacts_visible_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2684
    const-string v0, "CREATE INDEX contacts_visible_index ON contacts (in_visible_group);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2687
    return-void
.end method

.method private upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2690
    const-string v2, "ALTER TABLE raw_contacts ADD display_name_alt TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2692
    const-string v2, "ALTER TABLE raw_contacts ADD phonetic_name TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2694
    const-string v2, "ALTER TABLE raw_contacts ADD phonetic_name_style INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2696
    const-string v2, "ALTER TABLE raw_contacts ADD sort_key TEXT COLLATE PHONEBOOK;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2699
    const-string v2, "ALTER TABLE raw_contacts ADD sort_key_alt TEXT COLLATE PHONEBOOK;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v1

    .line 2705
    .local v1, "splitter":Lcom/android/providers/contacts/NameSplitter;
    const-string v2, "UPDATE raw_contacts SET display_name=?,display_name_alt=?,phonetic_name=?,phonetic_name_style=?,sort_key=?,sort_key_alt=? WHERE _id=?"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2716
    .local v0, "rawContactUpdate":Landroid/database/sqlite/SQLiteStatement;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeStructuredNamesToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V

    .line 2717
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeOrganizationsToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V

    .line 2719
    const-string v2, "DROP INDEX raw_contact_sort_key1_index"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2720
    const-string v2, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (contact_in_visible_group,sort_key);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2725
    const-string v2, "CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (contact_in_visible_group,sort_key_alt);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2729
    return-void
.end method

.method private upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2937
    return-void
.end method

.method private upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3030
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS mime_type ON mimetypes (mimetype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3033
    return-void
.end method

.method private upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3039
    .local v0, "lookupKeyBuilder":Ljava/lang/StringBuilder;
    const-string v1, "UPDATE contacts SET lookup=? WHERE _id=?"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 3043
    .local v11, "updateStatement":Landroid/database/sqlite/SQLiteStatement;
    const-string v1, "SELECT DISTINCT contact_id FROM raw_contacts WHERE deleted=0 AND account_type=\'com.android.exchange\'"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3049
    .local v10, "contactIdCursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3050
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3051
    .local v8, "contactId":J
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3052
    const-string v1, "SELECT account_type, account_name, _id, sourceid, display_name FROM raw_contacts WHERE contact_id=? ORDER BY _id"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 3059
    .local v7, "c":Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3060
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3068
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3081
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "contactId":J
    :catchall_1
    move-exception v1

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3082
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3068
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "contactId":J
    :cond_0
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3071
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3072
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3076
    :goto_2
    const/4 v1, 0x2

    invoke-virtual {v11, v1, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3078
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 3074
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 3081
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "contactId":J
    :cond_2
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3082
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3084
    return-void
.end method

.method private upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3087
    const-string v0, "CREATE TABLE properties (property_key TEXT PRIMARY_KEY, property_value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3091
    return-void
.end method

.method private upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3094
    const-string v0, "CREATE TABLE accounts (account_name TEXT, account_type TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3099
    const-string v0, "INSERT INTO accounts SELECT DISTINCT account_name, account_type FROM raw_contacts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3101
    return-void
.end method

.method private upgradeToVersion353(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3111
    const-string v0, "DELETE FROM contacts WHERE NOT EXISTS (SELECT 1 FROM raw_contacts WHERE contact_id=contacts._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3113
    return-void
.end method

.method private upgradeToVersion400(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3104
    const-string v0, "ALTER TABLE groups ADD favorites INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3106
    const-string v0, "ALTER TABLE groups ADD auto_add INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3108
    return-void
.end method

.method private upgradeToVersion401(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3435
    const-string v0, "CREATE TABLE visible_contacts (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3438
    const-string v0, "INSERT INTO visible_contacts SELECT _id FROM contacts WHERE in_visible_group!=0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3442
    const-string v0, "DROP INDEX contacts_visible_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3443
    return-void
.end method

.method private upgradeToVersion402(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3449
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3450
    return-void
.end method

.method private upgradeToVersion403(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3453
    const-string v0, "DROP TABLE IF EXISTS directories;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3454
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3456
    const-string v0, "ALTER TABLE raw_contacts ADD raw_contact_is_read_only INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3459
    const-string v0, "ALTER TABLE data ADD is_read_only INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3461
    return-void
.end method

.method private upgradeToVersion405(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x0

    .line 3464
    const-string v10, "DROP TABLE IF EXISTS phone_lookup;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3466
    const-string v10, "CREATE TABLE phone_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_number TEXT NOT NULL,min_match TEXT NOT NULL);"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3475
    const-string v10, "CREATE INDEX phone_lookup_index ON phone_lookup (normalized_number,raw_contact_id,data_id);"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3481
    const-string v10, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3487
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, v10}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    .line 3488
    .local v3, "mimeTypeId":J
    const-wide/16 v10, -0x1

    cmp-long v10, v3, v10

    if-nez v10, :cond_0

    .line 3518
    :goto_0
    return-void

    .line 3492
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT _id, raw_contact_id, data1 FROM data WHERE mimetype_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "data1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " NOT NULL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3498
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3500
    .local v7, "phoneValues":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3501
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3502
    .local v1, "dataID":J
    const/4 v10, 0x1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3503
    .local v8, "rawContactID":J
    const/4 v10, 0x2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3504
    .local v6, "number":Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3505
    .local v5, "normalizedNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3506
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 3507
    const-string v10, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3508
    const-string v10, "data_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3509
    const-string v10, "normalized_number"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    const-string v10, "min_match"

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    const-string v10, "phone_lookup"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3516
    .end local v1    # "dataID":J
    .end local v5    # "normalizedNumber":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v8    # "rawContactID":J
    :catchall_0
    move-exception v10

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v10

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeToVersion406(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3521
    const-string v0, "ALTER TABLE calls ADD countryiso TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3522
    return-void
.end method

.method private upgradeToVersion409(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3525
    const-string v0, "DROP TABLE IF EXISTS directories;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3526
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3527
    return-void
.end method

.method private upgradeToVersion411(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3543
    const-string v2, "DROP TABLE IF EXISTS default_directory"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3544
    const-string v2, "CREATE TABLE default_directory (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3547
    const-string v2, "INSERT OR IGNORE INTO default_directory  SELECT contact_id  FROM raw_contacts  WHERE raw_contacts.account_name IS NULL    AND raw_contacts.account_type IS NULL "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3554
    const-string v2, "INSERT OR IGNORE INTO default_directory  SELECT contact_id  FROM raw_contacts  WHERE NOT EXISTS (SELECT _id   FROM groups   WHERE raw_contacts.account_name = groups.account_name    AND raw_contacts.account_type = groups.account_type    AND groups.auto_add != 0)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3564
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-static {p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 3567
    .local v0, "mimetype":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT OR IGNORE INTO default_directory  SELECT contact_id  FROM raw_contacts  JOIN data    ON (raw_contacts._id=raw_contact_id) WHERE mimetype_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND EXISTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (SELECT _id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  FROM groups"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  WHERE raw_contacts.account_name = groups.account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    AND raw_contacts.account_type = groups.account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    AND groups.auto_add != 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3579
    return-void
.end method

.method private upgradeToVersion413(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3582
    const-string v0, "DROP TABLE IF EXISTS directories;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3583
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3584
    return-void
.end method

.method private upgradeToVersion415(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3587
    const-string v0, "ALTER TABLE groups ADD group_is_read_only INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3590
    const-string v0, "UPDATE groups   SET group_is_read_only=1 WHERE system_id NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3594
    return-void
.end method

.method private upgradeToVersion416(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3597
    const-string v0, "CREATE INDEX phone_lookup_data_id_min_match_index ON phone_lookup (data_id, min_match);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3599
    return-void
.end method

.method private upgradeToVersion501(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3603
    const-string v0, "DELETE FROM name_lookup WHERE name_type=5"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3604
    return-void
.end method

.method private upgradeToVersion502(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3608
    const-string v0, "DELETE FROM name_lookup WHERE name_type IN (6, 7)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3609
    return-void
.end method

.method private upgradeToVersion504(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x0

    .line 3612
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->initializeCache(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3615
    const-string v3, "SELECT raw_contact_id FROM data WHERE mimetype_id=? AND data4 NOT NULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3623
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3624
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3625
    .local v1, "rawContactId":J
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3629
    .end local v1    # "rawContactId":J
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3631
    return-void
.end method

.method private upgradeToVersion600(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3637
    return-void
.end method

.method private upgradeToVersion601(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3640
    const-string v0, "CREATE TABLE data_usage_stat(stat_id INTEGER PRIMARY KEY AUTOINCREMENT, data_id INTEGER NOT NULL, usage_type INTEGER NOT NULL DEFAULT 0, times_used INTEGER NOT NULL DEFAULT 0, last_time_used INTERGER NOT NULL DEFAULT 0, FOREIGN KEY(data_id) REFERENCES data(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3647
    const-string v0, "CREATE UNIQUE INDEX data_usage_stat_index ON data_usage_stat (data_id, usage_type)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3649
    return-void
.end method

.method private upgradeToVersion602(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3652
    const-string v0, "ALTER TABLE calls ADD voicemail_uri TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3653
    const-string v0, "ALTER TABLE calls ADD _data TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3654
    const-string v0, "ALTER TABLE calls ADD has_content INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3655
    const-string v0, "ALTER TABLE calls ADD mime_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3656
    const-string v0, "ALTER TABLE calls ADD source_data TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3657
    const-string v0, "ALTER TABLE calls ADD source_package TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3658
    const-string v0, "ALTER TABLE calls ADD state INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3659
    return-void
.end method

.method private upgradeToVersion604(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3662
    const-string v0, "CREATE TABLE voicemail_status (_id INTEGER PRIMARY KEY AUTOINCREMENT,source_package TEXT UNIQUE NOT NULL,settings_uri TEXT,voicemail_access_uri TEXT,configuration_state INTEGER,data_channel_state INTEGER,notification_channel_state INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3671
    return-void
.end method

.method private upgradeToVersion605(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3677
    return-void
.end method

.method private upgradeToVersion606(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3680
    const-string v0, "DROP VIEW IF EXISTS view_contacts_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3681
    const-string v0, "DROP VIEW IF EXISTS view_data_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3682
    const-string v0, "DROP VIEW IF EXISTS view_raw_contacts_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3683
    const-string v0, "DROP VIEW IF EXISTS view_raw_entities_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3684
    const-string v0, "DROP VIEW IF EXISTS view_entities_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3685
    const-string v0, "DROP VIEW IF EXISTS view_data_usage_stat_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3686
    const-string v0, "DROP INDEX IF EXISTS contacts_restricted_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3690
    return-void
.end method

.method private upgradeToVersion607(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3697
    return-void
.end method

.method private upgradeToVersion608(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3700
    const-string v0, "ALTER TABLE contacts ADD photo_file_id INTEGER REFERENCES photo_files(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3702
    const-string v0, "CREATE TABLE photo_files(_id INTEGER PRIMARY KEY AUTOINCREMENT, height INTEGER NOT NULL, width INTEGER NOT NULL, filesize INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3707
    return-void
.end method

.method private upgradeToVersion609(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3713
    return-void
.end method

.method private upgradeToVersion610(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3716
    const-string v0, "ALTER TABLE calls ADD is_read INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3717
    return-void
.end method

.method private upgradeToVersion611(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3720
    const-string v0, "ALTER TABLE raw_contacts ADD data_set TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3721
    const-string v0, "ALTER TABLE groups ADD data_set TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3722
    const-string v0, "ALTER TABLE accounts ADD data_set TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3724
    const-string v0, "CREATE INDEX raw_contacts_source_id_data_set_index ON raw_contacts (sourceid, account_type, account_name, data_set);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3727
    const-string v0, "CREATE INDEX groups_source_id_data_set_index ON groups (sourceid, account_type, account_name, data_set);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3729
    return-void
.end method

.method private upgradeToVersion612(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3732
    const-string v0, "ALTER TABLE calls ADD geocoded_location TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3734
    return-void
.end method

.method private upgradeToVersion613(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3747
    const-string v0, "DROP TABLE IF EXISTS stream_items"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3748
    const-string v0, "DROP TABLE IF EXISTS stream_item_photos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3750
    const-string v0, "CREATE TABLE stream_items(_id INTEGER PRIMARY KEY AUTOINCREMENT, raw_contact_id INTEGER NOT NULL, res_package TEXT, icon TEXT, label TEXT, text TEXT, timestamp INTEGER NOT NULL, comments TEXT, stream_item_sync1 TEXT, stream_item_sync2 TEXT, stream_item_sync3 TEXT, stream_item_sync4 TEXT, FOREIGN KEY(raw_contact_id) REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3765
    const-string v0, "CREATE TABLE stream_item_photos(_id INTEGER PRIMARY KEY AUTOINCREMENT, stream_item_id INTEGER NOT NULL, sort_index INTEGER, photo_file_id INTEGER NOT NULL, stream_item_photo_sync1 TEXT, stream_item_photo_sync2 TEXT, stream_item_photo_sync3 TEXT, stream_item_photo_sync4 TEXT, FOREIGN KEY(stream_item_id) REFERENCES stream_items(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3775
    return-void
.end method

.method private upgradeToVersion615(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3780
    const-string v0, "ALTER TABLE calls ADD lookup_uri TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3781
    const-string v0, "ALTER TABLE calls ADD matched_number TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3782
    const-string v0, "ALTER TABLE calls ADD normalized_number TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3783
    const-string v0, "ALTER TABLE calls ADD photo_id INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3784
    return-void
.end method

.method private upgradeToVersion618(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3790
    const-string v0, "CREATE TEMPORARY TABLE settings_backup(account_name STRING NOT NULL,account_type STRING NOT NULL,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3796
    const-string v0, "INSERT INTO settings_backup SELECT account_name, account_type, ungrouped_visible, should_sync FROM settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3799
    const-string v0, "DROP TABLE settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3800
    const-string v0, "CREATE TABLE settings (account_name STRING NOT NULL,account_type STRING NOT NULL,data_set STRING,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3807
    const-string v0, "INSERT INTO settings SELECT account_name, account_type, NULL, ungrouped_visible, should_sync FROM settings_backup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3810
    const-string v0, "DROP TABLE settings_backup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3811
    return-void
.end method

.method private upgradeToVersion622(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3814
    const-string v0, "ALTER TABLE calls ADD formatted_number TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3815
    return-void
.end method

.method private upgradeToVersion626(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3818
    const-string v3, "DROP TABLE IF EXISTS accounts"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3820
    const-string v3, "CREATE TABLE accounts (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_name TEXT, account_type TEXT, data_set TEXT);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3828
    const-string v3, "ALTER TABLE raw_contacts ADD account_id INTEGER REFERENCES accounts(_id)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3830
    const-string v3, "ALTER TABLE groups ADD account_id INTEGER REFERENCES accounts(_id)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3834
    const-string v3, "DROP INDEX IF EXISTS raw_contacts_source_id_index"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3835
    const-string v3, "DROP INDEX IF EXISTS raw_contacts_source_id_data_set_index"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3836
    const-string v3, "DROP INDEX IF EXISTS groups_source_id_index"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3837
    const-string v3, "DROP INDEX IF EXISTS groups_source_id_data_set_index"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3839
    const-string v3, "CREATE INDEX raw_contacts_source_id_account_id_index ON raw_contacts (sourceid, account_id);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3841
    const-string v3, "CREATE INDEX groups_source_id_account_id_index ON groups (sourceid, account_id);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3846
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 3847
    .local v1, "accountsWithDataSets":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/providers/contacts/AccountWithDataSet;>;"
    const-string v3, "raw_contacts"

    invoke-static {v1, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion626_findAccountsWithDataSets(Ljava/util/Set;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3848
    const-string v3, "groups"

    invoke-static {v1, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion626_findAccountsWithDataSets(Ljava/util/Set;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3850
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/AccountWithDataSet;

    .line 3851
    .local v0, "accountWithDataSet":Lcom/android/providers/contacts/AccountWithDataSet;
    const-string v3, "INSERT INTO accounts (account_name,account_type,data_set)VALUES(?, ?, ?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3858
    .end local v0    # "accountWithDataSet":Lcom/android/providers/contacts/AccountWithDataSet;
    :cond_0
    const-string v3, "raw_contacts"

    invoke-static {p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion626_fillAccountId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3859
    const-string v3, "groups"

    invoke-static {p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion626_fillAccountId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3860
    return-void
.end method

.method private static upgradeToVersion626_fillAccountId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 3876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3880
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SET account_id = (SELECT _id FROM accounts WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".account_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accounts.account_name"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->addJoinExpressionAllowingNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3883
    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accounts.account_type"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->addJoinExpressionAllowingNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3885
    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".data_set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accounts.data_set"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->addJoinExpressionAllowingNull(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3888
    const-string v1, "), account_name = null, account_type = null, data_set = null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3889
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3890
    return-void
.end method

.method private static upgradeToVersion626_findAccountsWithDataSets(Ljava/util/Set;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/providers/contacts/AccountWithDataSet;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3864
    .local p0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/providers/contacts/AccountWithDataSet;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT DISTINCT account_name, account_type, data_set FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3867
    .local v0, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3868
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/providers/contacts/AccountWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3871
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3873
    return-void
.end method

.method private upgradeToVersion701(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3893
    const-string v0, "UPDATE raw_contacts SET last_time_contacted = max(ifnull(last_time_contacted, 0),  ifnull((SELECT max(last_time_used)  FROM data JOIN data_usage_stat ON (data._id = data_usage_stat.data_id) WHERE data.raw_contact_id = raw_contacts._id), 0))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3899
    const-string v0, "UPDATE raw_contacts SET last_time_contacted = null where last_time_contacted = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3901
    return-void
.end method

.method private upgradeToVersion702(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3914
    const-string v11, "SELECT _id, raw_contact_id, data1 FROM data  WHERE mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/phone_v2\') AND data4 not like \'+%\'"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3922
    .local v1, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3923
    .local v2, "count":I
    if-nez v2, :cond_1

    .line 3944
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3978
    :cond_0
    return-void

    .line 3926
    :cond_1
    :try_start_1
    new-array v4, v2, [J

    .line 3927
    .local v4, "dataIds":[J
    new-array v9, v2, [J

    .line 3928
    .local v9, "rawContactIds":[J
    new-array v8, v2, [Ljava/lang/String;

    .line 3929
    .local v8, "phoneNumbers":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3931
    .local v10, "sbDataIds":Ljava/lang/StringBuilder;
    const/4 v11, -0x1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3932
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3933
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 3934
    .local v5, "i":I
    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    aput-wide v11, v4, v5

    .line 3935
    const/4 v11, 0x1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    aput-wide v11, v9, v5

    .line 3936
    const/4 v11, 0x2

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v5

    .line 3938
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 3939
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3941
    :cond_2
    aget-wide v11, v4, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3944
    .end local v2    # "count":I
    .end local v4    # "dataIds":[J
    .end local v5    # "i":I
    .end local v8    # "phoneNumbers":[Ljava/lang/String;
    .end local v9    # "rawContactIds":[J
    .end local v10    # "sbDataIds":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v11

    .restart local v2    # "count":I
    .restart local v4    # "dataIds":[J
    .restart local v8    # "phoneNumbers":[Ljava/lang/String;
    .restart local v9    # "rawContactIds":[J
    .restart local v10    # "sbDataIds":Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3947
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3952
    .local v3, "dataIdList":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UPDATE data SET data4 = null WHERE _id IN ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3956
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DELETE FROM phone_lookup WHERE data_id IN ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3959
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 3962
    aget-object v7, v8, v5

    .line 3963
    .local v7, "phoneNumber":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3959
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3965
    :cond_5
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3966
    .local v6, "normalized":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 3968
    const-string v11, "INSERT INTO phone_lookup(data_id, raw_contact_id, normalized_number, min_match) VALUES(?,?,?,?)"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aget-wide v14, v4, v5

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aget-wide v14, v9, v5

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v6, v12, v13

    const/4 v13, 0x3

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private upgradeToVersion707(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3981
    const-string v0, "ALTER TABLE raw_contacts ADD phonebook_label TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3982
    const-string v0, "ALTER TABLE raw_contacts ADD phonebook_bucket INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3983
    const-string v0, "ALTER TABLE raw_contacts ADD phonebook_label_alt TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3984
    const-string v0, "ALTER TABLE raw_contacts ADD phonebook_bucket_alt INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3985
    return-void
.end method

.method private upgradeToVersion710(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3990
    const-string v0, "ALTER TABLE contacts ADD contact_last_updated_timestamp INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE contacts SET contact_last_updated_timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3997
    const-string v0, "CREATE INDEX contacts_contact_last_updated_timestamp_index ON contacts(contact_last_updated_timestamp)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4001
    const-string v0, "CREATE TABLE deleted_contacts (contact_id INTEGER PRIMARY KEY,contact_deleted_timestamp INTEGER NOT NULL default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4006
    const-string v0, "CREATE INDEX deleted_contacts_contact_deleted_timestamp_index ON deleted_contacts(contact_deleted_timestamp)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4008
    return-void
.end method

.method private upgradeToVersion800(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4012
    const-string v0, "ALTER TABLE calls ADD presentation INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4018
    const-string v0, "UPDATE calls SET presentation=2, number=\'\' WHERE number=\'-2\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4019
    const-string v0, "UPDATE calls SET presentation=3, number=\'\' WHERE number=\'-1\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4020
    const-string v0, "UPDATE calls SET presentation=4, number=\'\' WHERE number=\'-3\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4021
    return-void
.end method

.method private upgradeToVersion802(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4024
    const-string v0, "ALTER TABLE contacts ADD pinned INTEGER NOT NULL DEFAULT 2147483647;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4026
    const-string v0, "ALTER TABLE raw_contacts ADD pinned INTEGER NOT NULL DEFAULT  2147483647;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4028
    return-void
.end method

.method private upgrateToVersion206(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2927
    const-string v0, "ALTER TABLE raw_contacts ADD name_verified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2929
    return-void
.end method


# virtual methods
.method public buildFallbackPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 4758
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4759
    .local v0, "minMatch":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4761
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "raw_contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4762
    const-string v2, " JOIN view_contacts as contacts_view ON (contacts_view._id = raw_contacts.contact_id) JOIN (SELECT data_id,normalized_number FROM phone_lookup WHERE (phone_lookup.min_match = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4768
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4769
    const-string v2, "\')) AS lookup ON lookup.data_id=data._id JOIN data ON data.raw_contact_id=raw_contacts._id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4775
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4777
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4778
    const-string v2, "PHONE_NUMBERS_EQUAL(data.data1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4779
    invoke-static {v1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4780
    iget-boolean v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    if-eqz v2, :cond_0

    const-string v2, ", 1)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4781
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4782
    return-void

    .line 4780
    :cond_0
    const-string v2, ", 0)"

    goto :goto_0
.end method

.method public buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "normalizedNumber"    # Ljava/lang/String;
    .param p3, "numberE164"    # Ljava/lang/String;

    .prologue
    .line 4741
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4742
    .local v0, "minMatch":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4743
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4744
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4746
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4747
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4748
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4749
    return-void
.end method

.method public buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 4802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4803
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4804
    .local v0, "minMatch":Ljava/lang/String;
    const-string v2, "(SELECT DISTINCT raw_contact_id FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4805
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4806
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4807
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4808
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4809
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public buildSipContactQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "sipAddress"    # Ljava/lang/String;

    .prologue
    .line 4791
    const-string v0, "upper("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4792
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4793
    const-string v0, ")=upper(?) AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4794
    const-string v0, "mimetype_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4795
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4796
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForSip()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4798
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    return-object v0
.end method

.method public clearSuperPrimary(JJ)V
    .locals 2
    .param p1, "rawContactId"    # J
    .param p3, "mimeTypeId"    # J

    .prologue
    .line 5458
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5459
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE data SET is_super_primary=0 WHERE mimetype_id=?   AND raw_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 5465
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5466
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5467
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5468
    return-void
.end method

.method public createNameSplitter()Lcom/android/providers/contacts/NameSplitter;
    .locals 1

    .prologue
    .line 4303
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter(Ljava/util/Locale;)Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    return-object v0
.end method

.method public createNameSplitter(Ljava/util/Locale;)Lcom/android/providers/contacts/NameSplitter;
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 4307
    new-instance v0, Lcom/android/providers/contacts/NameSplitter;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v2, 0x1040046

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v3, 0x1040048

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v4, 0x1040047

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v5, 0x1040049

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 4313
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    return-object v0
.end method

.method public createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rebuildSqliteStats"    # Z

    .prologue
    .line 1398
    const-string v0, "DROP TABLE IF EXISTS search_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1399
    const-string v0, "CREATE VIRTUAL TABLE search_index USING FTS4 (contact_id INTEGER REFERENCES contacts(_id) NOT NULL,content TEXT, name TEXT, tokens TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1406
    if-eqz p2, :cond_0

    .line 1407
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1409
    :cond_0
    return-void
.end method

.method protected dbForProfile()I
    .locals 1

    .prologue
    .line 1935
    const/4 v0, 0x0

    return v0
.end method

.method public deleteNameLookup(J)V
    .locals 2
    .param p1, "dataId"    # J

    .prologue
    .line 5524
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5525
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM name_lookup WHERE data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 5529
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5530
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5531
    return-void
.end method

.method public deleteStatusUpdate(J)V
    .locals 2
    .param p1, "dataId"    # J

    .prologue
    .line 5070
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5071
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM status_updates WHERE status_update_data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 5075
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5076
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5077
    return-void
.end method

.method public exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 5026
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 5034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5035
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 5036
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5038
    :cond_0
    const-string v6, "URI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5039
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 5040
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5041
    .local v1, "callingUid":I
    const-string v6, ", calling user: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5042
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 5043
    .local v5, "userName":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 5044
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5049
    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 5050
    .local v0, "callerPackages":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lez v6, :cond_1

    .line 5051
    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 5052
    const-string v6, ", calling package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5053
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5066
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 5046
    .end local v0    # "callerPackages":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5055
    .restart local v0    # "callerPackages":[Ljava/lang/String;
    :cond_3
    const-string v6, ", calling package is one of: ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5056
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_5

    .line 5057
    if-eqz v2, :cond_4

    .line 5058
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5060
    :cond_4
    aget-object v6, v0, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5056
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5062
    :cond_5
    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 4045
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 4046
    .local v0, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 4047
    const/4 v1, 0x0

    .line 4050
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 4031
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 4032
    .local v2, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v4, v2

    if-nez v4, :cond_1

    .line 4041
    :cond_0
    :goto_0
    return-object v3

    .line 4036
    :cond_1
    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4037
    .local v0, "address":Ljava/lang/String;
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 4038
    .local v1, "at":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 4039
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getAccountIdOrNull(Lcom/android/providers/contacts/AccountWithDataSet;)Ljava/lang/Long;
    .locals 4
    .param p1, "accountWithDataSet"    # Lcom/android/providers/contacts/AccountWithDataSet;

    .prologue
    .line 4513
    if-nez p1, :cond_0

    .line 4514
    sget-object p1, Lcom/android/providers/contacts/AccountWithDataSet;->LOCAL:Lcom/android/providers/contacts/AccountWithDataSet;

    .line 4516
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT _id FROM accounts WHERE ((?1 IS NULL AND account_name IS NULL) OR (account_name=?1)) AND ((?2 IS NULL AND account_type IS NULL) OR (account_type=?2)) AND ((?3 IS NULL AND data_set IS NULL) OR (data_set=?3))"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4527
    .local v1, "select":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4528
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4529
    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4531
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 4536
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :goto_0
    return-object v2

    .line 4532
    :catch_0
    move-exception v0

    .line 4533
    .local v0, "notFound":Landroid/database/sqlite/SQLiteDoneException;
    const/4 v2, 0x0

    .line 4536
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .end local v0    # "notFound":Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public getAggregationMode(J)I
    .locals 4
    .param p1, "rawContactId"    # J

    .prologue
    .line 4724
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 4725
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT aggregation_mode FROM raw_contacts WHERE _id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4731
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4732
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    .line 4735
    :goto_0
    return v1

    .line 4733
    :catch_0
    move-exception v0

    .line 4735
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getAllAccountsWithDataSets()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/providers/contacts/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4494
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 4495
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/providers/contacts/AccountWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT DISTINCT _id,account_name,account_type,data_set FROM accounts"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4500
    .local v0, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4501
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/providers/contacts/AccountWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4504
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4506
    return-object v1
.end method

.method public getContactId(J)J
    .locals 4
    .param p1, "rawContactId"    # J

    .prologue
    .line 4708
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 4709
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT contact_id FROM raw_contacts WHERE _id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4715
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4716
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4719
    :goto_0
    return-wide v1

    .line 4717
    :catch_0
    move-exception v0

    .line 4719
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5599
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataMimeType(J)Ljava/lang/String;
    .locals 5
    .param p1, "dataId"    # J

    .prologue
    .line 4466
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_0

    .line 4467
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT mimetype FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE data._id=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4474
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4475
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4479
    :goto_0
    return-object v1

    .line 4477
    :catch_0
    move-exception v0

    .line 4479
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "writable"    # Z

    .prologue
    .line 812
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayNameSourceForMimeTypeId(I)I
    .locals 4
    .param p1, "mimeTypeId"    # I

    .prologue
    .line 4447
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4448
    const/16 v0, 0x28

    .line 4458
    :goto_0
    return v0

    .line 4449
    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdEmail:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4450
    const/16 v0, 0xa

    goto :goto_0

    .line 4451
    :cond_1
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdPhone:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 4452
    const/16 v0, 0x14

    goto :goto_0

    .line 4453
    :cond_2
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdOrganization:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 4454
    const/16 v0, 0x1e

    goto :goto_0

    .line 4455
    :cond_3
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdNickname:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 4456
    const/16 v0, 0x23

    goto :goto_0

    .line 4458
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeTypeId(Ljava/lang/String;)J
    .locals 2
    .param p1, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 4394
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4396
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMimeTypeIdForEmail()J
    .locals 2

    .prologue
    .line 4435
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdEmail:J

    return-wide v0
.end method

.method public getMimeTypeIdForIm()J
    .locals 2

    .prologue
    .line 4431
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdIm:J

    return-wide v0
.end method

.method public getMimeTypeIdForOrganization()J
    .locals 2

    .prologue
    .line 4427
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdOrganization:J

    return-wide v0
.end method

.method public getMimeTypeIdForPhone()J
    .locals 2

    .prologue
    .line 4439
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdPhone:J

    return-wide v0
.end method

.method public getMimeTypeIdForSip()J
    .locals 2

    .prologue
    .line 4443
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdSip:J

    return-wide v0
.end method

.method public getMimeTypeIdForStructuredName()J
    .locals 2

    .prologue
    .line 4419
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    return-wide v0
.end method

.method public getMimeTypeIdForStructuredPostal()J
    .locals 2

    .prologue
    .line 4423
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredPostal:J

    return-wide v0
.end method

.method public getOrCreateAccountIdInTransaction(Lcom/android/providers/contacts/AccountWithDataSet;)J
    .locals 4
    .param p1, "accountWithDataSet"    # Lcom/android/providers/contacts/AccountWithDataSet;

    .prologue
    .line 4547
    if-nez p1, :cond_0

    .line 4548
    sget-object p1, Lcom/android/providers/contacts/AccountWithDataSet;->LOCAL:Lcom/android/providers/contacts/AccountWithDataSet;

    .line 4550
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getAccountIdOrNull(Lcom/android/providers/contacts/AccountWithDataSet;)Ljava/lang/Long;

    move-result-object v0

    .line 4551
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 4552
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4568
    :goto_0
    return-wide v2

    .line 4554
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "INSERT INTO accounts (account_name, account_type, data_set) VALUES (?, ?, ?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4560
    .local v1, "insert":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4561
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4562
    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4563
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4565
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4568
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 4565
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public getPackageId(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4369
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4384
    :goto_0
    return-wide v2

    .line 4371
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT _id FROM packages WHERE package=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4376
    .local v1, "packageQuery":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "INSERT INTO packages(package) VALUES (?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4381
    .local v0, "packageInsert":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupAndCacheId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4383
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4384
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 4383
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4384
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4953
    const-string v1, "properties"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "property_value"

    aput-object v0, v2, v6

    const-string v3, "property_key=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4957
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 4959
    .local v9, "value":Ljava/lang/String;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4960
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 4963
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4966
    if-eqz v9, :cond_1

    .end local v9    # "value":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 4963
    .restart local v9    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move-object v9, p3

    .line 4966
    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 4949
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 4942
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method getUseStrictPhoneNumberComparisonForTest()Z
    .locals 1

    .prologue
    .line 5609
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    return v0
.end method

.method public getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4873
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1373
    return-void
.end method

.method public insertNameLookup(JJILjava/lang/String;)V
    .locals 4
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "lookupType"    # I
    .param p6, "name"    # Ljava/lang/String;

    .prologue
    .line 5500
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5518
    :goto_0
    return-void

    .line 5504
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 5505
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT OR IGNORE INTO name_lookup(raw_contact_id,data_id,name_type,normalized_name) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 5513
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5514
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5515
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5516
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5517
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0
.end method

.method public insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 8
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "rawContactId"    # J
    .param p4, "dataId"    # J
    .param p6, "lookupType"    # I
    .param p7, "name"    # Ljava/lang/String;

    .prologue
    .line 3410
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3420
    :cond_0
    :goto_0
    return-void

    .line 3414
    :cond_1
    invoke-static {p7}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3415
    .local v7, "normalized":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 3419
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "email"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 5534
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, v0

    .line 5545
    :goto_0
    return-object v7

    .line 5538
    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5539
    .local v7, "address":Ljava/lang/String;
    if-nez v7, :cond_1

    move-object v7, v0

    .line 5540
    goto :goto_0

    .line 5543
    :cond_1
    const/4 v5, 0x4

    invoke-static {v7}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertNameLookupForNickname(JJLjava/lang/String;)V
    .locals 7
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "nickname"    # Ljava/lang/String;

    .prologue
    .line 5552
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5558
    :goto_0
    return-void

    .line 5556
    :cond_0
    const/4 v5, 0x3

    invoke-static {p5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "familyName"    # Ljava/lang/String;
    .param p6, "middleName"    # Ljava/lang/String;
    .param p7, "givenName"    # Ljava/lang/String;

    .prologue
    .line 5562
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5563
    if-eqz p5, :cond_0

    .line 5564
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5566
    :cond_0
    if-eqz p6, :cond_1

    .line 5567
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5569
    :cond_1
    if-eqz p7, :cond_2

    .line 5570
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5573
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 5574
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    .line 5577
    :cond_3
    return-void
.end method

.method public insertStatusUpdate(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "dataId"    # Ljava/lang/Long;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "resPackage"    # Ljava/lang/String;
    .param p4, "iconResource"    # Ljava/lang/Integer;
    .param p5, "labelResource"    # Ljava/lang/Integer;

    .prologue
    .line 5103
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_0

    .line 5104
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "INSERT INTO status_updates(status_update_data_id, status,status_res_package,status_icon,status_label) VALUES (?,?,?,?,?)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 5114
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5115
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5116
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5117
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 5118
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 5119
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5152
    :goto_0
    return-void

    .line 5120
    :catch_0
    move-exception v0

    .line 5122
    .local v0, "e":Landroid/database/sqlite/SQLiteConstraintException;
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 5123
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "UPDATE status_updates SET status_ts=?,status=? WHERE status_update_data_id=? AND status!=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    .line 5131
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5132
    .local v1, "timestamp":J
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5133
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5134
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5135
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5136
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5138
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_2

    .line 5139
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "UPDATE status_updates SET status_res_package=?,status_icon=?,status_label=? WHERE status_update_data_id=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 5146
    :cond_2
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5147
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 5148
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 5149
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5150
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public invalidateAllCache()V
    .locals 3

    .prologue
    .line 4484
    const-string v0, "ContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateAllCache: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4487
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4488
    return-void
.end method

.method public isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "contactId"    # J

    .prologue
    const/4 v0, 0x1

    .line 4659
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 4660
    const-string v1, "SELECT EXISTS (SELECT 1 FROM default_directory WHERE _id=?)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4665
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4666
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsToUpdateLocaleData(Ljava/util/Locale;)Z
    .locals 7
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x1

    .line 3135
    const-string v4, "locale"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3136
    .local v2, "dbLocale":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3147
    :goto_0
    return v3

    .line 3139
    :cond_0
    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v0

    .line 3140
    .local v0, "curICUVersion":Ljava/lang/String;
    const-string v4, "icu_version"

    const-string v5, "(unknown)"

    invoke-virtual {p0, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3142
    .local v1, "dbICUVersion":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3143
    const-string v4, "ContactsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ICU version has changed. Current version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; DB was built with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3147
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 953
    const-string v1, "ContactsDatabaseHelper"

    const-string v2, "Bootstrapping database version: 803"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v1, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 959
    const-string v1, "CREATE TABLE properties (property_key TEXT PRIMARY KEY, property_value TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 963
    const-string v1, "database_time_created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v1, "CREATE TABLE accounts (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_name TEXT, account_type TEXT, data_set TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 974
    const-string v1, "CREATE TABLE contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,name_raw_contact_id INTEGER REFERENCES raw_contacts(_id),photo_id INTEGER REFERENCES data(_id),photo_file_id INTEGER REFERENCES photo_files(_id),custom_ringtone TEXT,send_to_voicemail INTEGER NOT NULL DEFAULT 0,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,pinned INTEGER NOT NULL DEFAULT 2147483647,has_phone_number INTEGER NOT NULL DEFAULT 0,lookup TEXT,status_update_id INTEGER REFERENCES data(_id),contact_last_updated_timestamp INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 991
    invoke-static {p1}, Lcom/android/providers/contacts/database/ContactsTableUtil;->createIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 994
    invoke-static {p1}, Lcom/android/providers/contacts/database/DeletedContactsTableUtil;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 997
    const-string v1, "CREATE TABLE raw_contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id INTEGER REFERENCES accounts(_id),sourceid TEXT,raw_contact_is_read_only INTEGER NOT NULL DEFAULT 0,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,deleted INTEGER NOT NULL DEFAULT 0,contact_id INTEGER REFERENCES contacts(_id),aggregation_mode INTEGER NOT NULL DEFAULT 0,aggregation_needed INTEGER NOT NULL DEFAULT 1,custom_ringtone TEXT,send_to_voicemail INTEGER NOT NULL DEFAULT 0,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,pinned INTEGER NOT NULL DEFAULT 2147483647,display_name TEXT,display_name_alt TEXT,display_name_source INTEGER NOT NULL DEFAULT 0,phonetic_name TEXT,phonetic_name_style TEXT,sort_key TEXT COLLATE PHONEBOOK,phonebook_label TEXT,phonebook_bucket INTEGER,sort_key_alt TEXT COLLATE PHONEBOOK,phonebook_label_alt TEXT,phonebook_bucket_alt INTEGER,name_verified INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1040
    const-string v1, "CREATE INDEX raw_contacts_contact_id_index ON raw_contacts (contact_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1044
    const-string v1, "CREATE INDEX raw_contacts_source_id_account_id_index ON raw_contacts (sourceid, account_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1050
    const-string v1, "CREATE TABLE stream_items (_id INTEGER PRIMARY KEY AUTOINCREMENT, raw_contact_id INTEGER NOT NULL, res_package TEXT, icon TEXT, label TEXT, text TEXT, timestamp INTEGER NOT NULL, comments TEXT, stream_item_sync1 TEXT, stream_item_sync2 TEXT, stream_item_sync3 TEXT, stream_item_sync4 TEXT, FOREIGN KEY(raw_contact_id) REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1066
    const-string v1, "CREATE TABLE stream_item_photos (_id INTEGER PRIMARY KEY AUTOINCREMENT, stream_item_id INTEGER NOT NULL, sort_index INTEGER, photo_file_id INTEGER NOT NULL, stream_item_photo_sync1 TEXT, stream_item_photo_sync2 TEXT, stream_item_photo_sync3 TEXT, stream_item_photo_sync4 TEXT, FOREIGN KEY(stream_item_id) REFERENCES stream_items(_id));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1078
    const-string v1, "CREATE TABLE photo_files (_id INTEGER PRIMARY KEY AUTOINCREMENT, height INTEGER NOT NULL, width INTEGER NOT NULL, filesize INTEGER NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1090
    const-string v1, "CREATE TABLE packages (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1096
    const-string v1, "CREATE TABLE mimetypes (_id INTEGER PRIMARY KEY AUTOINCREMENT,mimetype TEXT NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1102
    const-string v1, "CREATE UNIQUE INDEX mime_type ON mimetypes (mimetype);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1107
    const-string v1, "CREATE TABLE data (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,is_read_only INTEGER NOT NULL DEFAULT 0,is_primary INTEGER NOT NULL DEFAULT 0,is_super_primary INTEGER NOT NULL DEFAULT 0,data_version INTEGER NOT NULL DEFAULT 0,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT,data5 TEXT,data6 TEXT,data7 TEXT,data8 TEXT,data9 TEXT,data10 TEXT,data11 TEXT,data12 TEXT,data13 TEXT,data14 TEXT,data15 TEXT,data_sync1 TEXT, data_sync2 TEXT, data_sync3 TEXT, data_sync4 TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1137
    const-string v1, "CREATE INDEX data_raw_contact_id ON data (raw_contact_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1144
    const-string v1, "CREATE INDEX data_mimetype_data1_index ON data (mimetype_id,data1);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1150
    const-string v1, "CREATE TABLE phone_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_number TEXT NOT NULL,min_match TEXT NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1159
    const-string v1, "CREATE INDEX phone_lookup_index ON phone_lookup (normalized_number,raw_contact_id,data_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1165
    const-string v1, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1171
    const-string v1, "CREATE INDEX phone_lookup_data_id_min_match_index ON phone_lookup (data_id, min_match);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1175
    const-string v1, "CREATE TABLE name_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_name TEXT NOT NULL,name_type INTEGER NOT NULL,PRIMARY KEY (data_id, normalized_name, name_type));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1188
    const-string v1, "CREATE INDEX name_lookup_raw_contact_id_index ON name_lookup (raw_contact_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1192
    const-string v1, "CREATE TABLE nickname_lookup (name TEXT,cluster TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1197
    const-string v1, "CREATE UNIQUE INDEX nickname_lookup_index ON nickname_lookup (name, cluster);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1203
    const-string v1, "CREATE TABLE groups (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),account_id INTEGER REFERENCES accounts(_id),sourceid TEXT,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,title TEXT,title_res INTEGER,notes TEXT,system_id TEXT,deleted INTEGER NOT NULL DEFAULT 0,group_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1,auto_add INTEGER NOT NULL DEFAULT 0,favorites INTEGER NOT NULL DEFAULT 0,group_is_read_only INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1227
    const-string v1, "CREATE INDEX groups_source_id_account_id_index ON groups (sourceid, account_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1232
    const-string v1, "CREATE TABLE IF NOT EXISTS agg_exceptions (_id INTEGER PRIMARY KEY AUTOINCREMENT,type INTEGER NOT NULL, raw_contact_id1 INTEGER REFERENCES raw_contacts(_id), raw_contact_id2 INTEGER REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1241
    const-string v1, "CREATE UNIQUE INDEX IF NOT EXISTS aggregation_exception_index1 ON agg_exceptions (raw_contact_id1, raw_contact_id2);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1247
    const-string v1, "CREATE UNIQUE INDEX IF NOT EXISTS aggregation_exception_index2 ON agg_exceptions (raw_contact_id2, raw_contact_id1);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1253
    const-string v1, "CREATE TABLE IF NOT EXISTS settings (account_name STRING NOT NULL,account_type STRING NOT NULL,data_set STRING,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1261
    const-string v1, "CREATE TABLE visible_contacts (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1265
    const-string v1, "CREATE TABLE default_directory (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1271
    const-string v1, "CREATE TABLE calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,presentation INTEGER NOT NULL DEFAULT 1,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,numbertype INTEGER,numberlabel TEXT,countryiso TEXT,voicemail_uri TEXT,is_read INTEGER,geocoded_location TEXT,lookup_uri TEXT,matched_number TEXT,normalized_number TEXT,photo_id INTEGER NOT NULL DEFAULT 0,formatted_number TEXT,_data TEXT,has_content INTEGER,mime_type TEXT,source_data TEXT,source_package TEXT,state INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1301
    const-string v1, "CREATE TABLE voicemail_status (_id INTEGER PRIMARY KEY AUTOINCREMENT,source_package TEXT UNIQUE NOT NULL,settings_uri TEXT,voicemail_access_uri TEXT,configuration_state INTEGER,data_channel_state INTEGER,notification_channel_state INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1311
    const-string v1, "CREATE TABLE status_updates (status_update_data_id INTEGER PRIMARY KEY REFERENCES data(_id),status TEXT,status_ts INTEGER,status_res_package TEXT, status_label INTEGER, status_icon INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1320
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1321
    invoke-virtual {p0, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1323
    const-string v1, "CREATE TABLE data_usage_stat(stat_id INTEGER PRIMARY KEY AUTOINCREMENT, data_id INTEGER NOT NULL, usage_type INTEGER NOT NULL DEFAULT 0, times_used INTEGER NOT NULL DEFAULT 0, last_time_used INTERGER NOT NULL DEFAULT 0, FOREIGN KEY(data_id) REFERENCES data(_id));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1332
    const-string v1, "CREATE UNIQUE INDEX data_usage_stat_index ON data_usage_stat (data_id, usage_type);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1339
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1340
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1341
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1342
    invoke-direct {p0, p1, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1344
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1347
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1350
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1352
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseOptimizationEnabled:Z

    if-eqz v1, :cond_0

    .line 1354
    const-string v1, "ANALYZE;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1356
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1359
    :cond_0
    const/4 v1, 0x0

    const-string v2, "com.android.contacts"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1363
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v1

    if-nez v1, :cond_1

    .line 1364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Contacts.DATABASE_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    .local v0, "dbCreatedIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1367
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1369
    .end local v0    # "dbCreatedIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1984
    const-string v0, "ContactsDatabaseHelper"

    const-string v1, "ContactsProvider cannot proceed because downgrading your database is not supported. To continue, please either re-upgrade to your previous Android version, or clear all application data in Contacts Storage (this will result in the loss of all local contacts that are not synced). To avoid data loss, your contacts database will not be wiped automatically."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1990
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->refreshDatabaseCaches(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 867
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v1, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 869
    const-string v1, "ATTACH DATABASE \':memory:\' AS presence_db;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    const-string v1, "CREATE TABLE IF NOT EXISTS presence_db.presence (presence_data_id INTEGER PRIMARY KEY REFERENCES data(_id),protocol INTEGER NOT NULL,custom_protocol TEXT,im_handle TEXT,im_account TEXT,presence_contact_id INTEGER REFERENCES contacts(_id),presence_raw_contact_id INTEGER REFERENCES raw_contacts(_id),mode INTEGER,chat_capability INTEGER NOT NULL DEFAULT 0,UNIQUE(protocol, custom_protocol, im_handle, im_account));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 884
    const-string v1, "CREATE INDEX IF NOT EXISTS presence_db.presenceIndex ON presence (presence_raw_contact_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 886
    const-string v1, "CREATE INDEX IF NOT EXISTS presence_db.presenceIndex2 ON presence (presence_contact_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 889
    const-string v1, "CREATE TABLE IF NOT EXISTS presence_db.agg_presence (presence_contact_id INTEGER PRIMARY KEY REFERENCES contacts(_id),mode INTEGER,chat_capability INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 898
    const-string v1, "CREATE TRIGGER presence_db.presence_deleted BEFORE DELETE ON presence_db.presence BEGIN    DELETE FROM agg_presence     WHERE presence_contact_id = (SELECT presence_contact_id FROM presence WHERE presence_raw_contact_id=OLD.presence_raw_contact_id AND NOT EXISTS(SELECT presence_raw_contact_id FROM presence WHERE presence_contact_id=OLD.presence_contact_id AND presence_raw_contact_id!=OLD.presence_raw_contact_id)); END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 916
    const-string v0, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id;"

    .line 938
    .local v0, "replaceAggregatePresenceSql":Ljava/lang/String;
    const-string v1, "CREATE TRIGGER presence_db.presence_inserted AFTER INSERT ON presence_db.presence BEGIN INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id; END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 944
    const-string v1, "CREATE TRIGGER presence_db.presence_updated AFTER UPDATE ON presence_db.presence BEGIN INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id; END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1994
    const/16 v7, 0x63

    if-ge p2, v7, :cond_1

    .line 1995
    const-string v7, "ContactsDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upgrading from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data will be lost!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const-string v7, "DROP TABLE IF EXISTS contacts;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1999
    const-string v7, "DROP TABLE IF EXISTS raw_contacts;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2000
    const-string v7, "DROP TABLE IF EXISTS packages;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2001
    const-string v7, "DROP TABLE IF EXISTS mimetypes;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2002
    const-string v7, "DROP TABLE IF EXISTS data;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2003
    const-string v7, "DROP TABLE IF EXISTS phone_lookup;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2004
    const-string v7, "DROP TABLE IF EXISTS name_lookup;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2005
    const-string v7, "DROP TABLE IF EXISTS nickname_lookup;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2006
    const-string v7, "DROP TABLE IF EXISTS groups;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2007
    const-string v7, "DROP TABLE IF EXISTS activities;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2008
    const-string v7, "DROP TABLE IF EXISTS calls;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2009
    const-string v7, "DROP TABLE IF EXISTS settings;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2010
    const-string v7, "DROP TABLE IF EXISTS status_updates;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2015
    const-string v7, "DROP TABLE IF EXISTS agg_exceptions;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2017
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2574
    :cond_0
    return-void

    .line 2021
    :cond_1
    const-string v7, "ContactsDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upgrading from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const/4 v6, 0x0

    .line 2024
    .local v6, "upgradeViewsAndTriggers":Z
    const/4 v4, 0x0

    .line 2025
    .local v4, "upgradeNameLookup":Z
    const/4 v2, 0x0

    .line 2026
    .local v2, "upgradeLegacyApiSupport":Z
    const/4 v5, 0x0

    .line 2027
    .local v5, "upgradeSearchIndex":Z
    const/4 v1, 0x0

    .line 2028
    .local v1, "rescanDirectories":Z
    const/4 v0, 0x0

    .line 2029
    .local v0, "rebuildSqliteStats":Z
    const/4 v3, 0x0

    .line 2031
    .local v3, "upgradeLocaleSpecificData":Z
    const/16 v7, 0x63

    if-ne p2, v7, :cond_2

    .line 2032
    const/4 v6, 0x1

    .line 2033
    add-int/lit8 p2, p2, 0x1

    .line 2036
    :cond_2
    const/16 v7, 0x64

    if-ne p2, v7, :cond_3

    .line 2037
    const-string v7, "CREATE INDEX IF NOT EXISTS mimetypes_mimetype_index ON mimetypes (mimetype,_id);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2041
    const-string v7, "mimetypes"

    const-string v8, "mimetypes_mimetype_index"

    const-string v9, "50 1 1"

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    const/4 v6, 0x1

    .line 2045
    add-int/lit8 p2, p2, 0x1

    .line 2048
    :cond_3
    const/16 v7, 0x65

    if-ne p2, v7, :cond_4

    .line 2049
    const/4 v6, 0x1

    .line 2050
    add-int/lit8 p2, p2, 0x1

    .line 2053
    :cond_4
    const/16 v7, 0x66

    if-ne p2, v7, :cond_5

    .line 2054
    const/4 v6, 0x1

    .line 2055
    add-int/lit8 p2, p2, 0x1

    .line 2058
    :cond_5
    const/16 v7, 0x67

    if-ne p2, v7, :cond_6

    .line 2059
    const/4 v6, 0x1

    .line 2060
    add-int/lit8 p2, p2, 0x1

    .line 2063
    :cond_6
    const/16 v7, 0x68

    if-eq p2, v7, :cond_7

    const/16 v7, 0xc9

    if-ne p2, v7, :cond_8

    .line 2064
    :cond_7
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2065
    const/4 v6, 0x1

    .line 2066
    add-int/lit8 p2, p2, 0x1

    .line 2069
    :cond_8
    const/16 v7, 0x69

    if-ne p2, v7, :cond_9

    .line 2070
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2071
    const/4 v4, 0x1

    .line 2072
    const/16 p2, 0xca

    .line 2075
    :cond_9
    const/16 v7, 0xca

    if-ne p2, v7, :cond_a

    .line 2076
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2077
    const/4 v6, 0x1

    .line 2078
    add-int/lit8 p2, p2, 0x1

    .line 2081
    :cond_a
    const/16 v7, 0xcb

    if-ne p2, v7, :cond_b

    .line 2082
    const/4 v6, 0x1

    .line 2083
    add-int/lit8 p2, p2, 0x1

    .line 2086
    :cond_b
    const/16 v7, 0xcc

    if-ne p2, v7, :cond_c

    .line 2087
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2088
    const/4 v6, 0x1

    .line 2089
    add-int/lit8 p2, p2, 0x1

    .line 2092
    :cond_c
    const/16 v7, 0xcd

    if-ne p2, v7, :cond_d

    .line 2093
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgrateToVersion206(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2094
    const/4 v6, 0x1

    .line 2095
    add-int/lit8 p2, p2, 0x1

    .line 2098
    :cond_d
    const/16 v7, 0xce

    if-ne p2, v7, :cond_e

    .line 2099
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2100
    const/16 p2, 0x12c

    .line 2103
    :cond_e
    const/16 v7, 0x12c

    if-ne p2, v7, :cond_f

    .line 2104
    const/4 v6, 0x1

    .line 2105
    const/16 p2, 0x12d

    .line 2108
    :cond_f
    const/16 v7, 0x12d

    if-ne p2, v7, :cond_10

    .line 2109
    const/4 v6, 0x1

    .line 2110
    const/16 p2, 0x12e

    .line 2113
    :cond_10
    const/16 v7, 0x12e

    if-ne p2, v7, :cond_11

    .line 2114
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeEmailToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2115
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeNicknameToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2116
    const/16 p2, 0x12f

    .line 2119
    :cond_11
    const/16 v7, 0x12f

    if-ne p2, v7, :cond_12

    .line 2120
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2121
    const/16 p2, 0x130

    .line 2124
    :cond_12
    const/16 v7, 0x130

    if-ne p2, v7, :cond_13

    .line 2125
    const/4 v4, 0x1

    .line 2126
    const/16 p2, 0x131

    .line 2129
    :cond_13
    const/16 v7, 0x131

    if-ne p2, v7, :cond_14

    .line 2130
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2131
    const/16 p2, 0x132

    .line 2134
    :cond_14
    const/16 v7, 0x132

    if-ne p2, v7, :cond_15

    .line 2135
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2136
    const/16 p2, 0x133

    .line 2139
    :cond_15
    const/16 v7, 0x133

    if-ne p2, v7, :cond_16

    .line 2140
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2141
    const/16 p2, 0x134

    .line 2145
    :cond_16
    const/16 v7, 0x15e

    if-ge p2, v7, :cond_17

    .line 2146
    const/4 v6, 0x1

    .line 2147
    const/16 p2, 0x15f

    .line 2150
    :cond_17
    const/16 v7, 0x15f

    if-ne p2, v7, :cond_18

    .line 2151
    const/4 v4, 0x1

    .line 2152
    const/16 p2, 0x160

    .line 2155
    :cond_18
    const/16 v7, 0x160

    if-ne p2, v7, :cond_19

    .line 2156
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion353(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2157
    const/16 p2, 0x161

    .line 2161
    :cond_19
    const/16 v7, 0x190

    if-ge p2, v7, :cond_1a

    .line 2162
    const/4 v6, 0x1

    .line 2163
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion400(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2164
    const/16 p2, 0x190

    .line 2167
    :cond_1a
    const/16 v7, 0x190

    if-ne p2, v7, :cond_1b

    .line 2168
    const/4 v6, 0x1

    .line 2169
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion401(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2170
    const/16 p2, 0x191

    .line 2173
    :cond_1b
    const/16 v7, 0x191

    if-ne p2, v7, :cond_1c

    .line 2174
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion402(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2175
    const/16 p2, 0x192

    .line 2178
    :cond_1c
    const/16 v7, 0x192

    if-ne p2, v7, :cond_1d

    .line 2179
    const/4 v6, 0x1

    .line 2180
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion403(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2181
    const/16 p2, 0x193

    .line 2184
    :cond_1d
    const/16 v7, 0x193

    if-ne p2, v7, :cond_1e

    .line 2185
    const/4 v6, 0x1

    .line 2186
    const/16 p2, 0x194

    .line 2189
    :cond_1e
    const/16 v7, 0x194

    if-ne p2, v7, :cond_1f

    .line 2190
    const/4 v6, 0x1

    .line 2191
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion405(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2192
    const/16 p2, 0x195

    .line 2195
    :cond_1f
    const/16 v7, 0x195

    if-ne p2, v7, :cond_20

    .line 2196
    const/4 v6, 0x1

    .line 2197
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion406(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2198
    const/16 p2, 0x196

    .line 2201
    :cond_20
    const/16 v7, 0x196

    if-ne p2, v7, :cond_21

    .line 2202
    const/4 v6, 0x1

    .line 2203
    const/16 p2, 0x197

    .line 2206
    :cond_21
    const/16 v7, 0x197

    if-ne p2, v7, :cond_22

    .line 2208
    const/16 p2, 0x198

    .line 2211
    :cond_22
    const/16 v7, 0x198

    if-ne p2, v7, :cond_23

    .line 2212
    const/4 v6, 0x1

    .line 2213
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion409(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2214
    const/16 p2, 0x199

    .line 2217
    :cond_23
    const/16 v7, 0x199

    if-ne p2, v7, :cond_24

    .line 2218
    const/4 v6, 0x1

    .line 2219
    const/16 p2, 0x19a

    .line 2222
    :cond_24
    const/16 v7, 0x19a

    if-ne p2, v7, :cond_25

    .line 2223
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion411(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2224
    const/16 p2, 0x19b

    .line 2227
    :cond_25
    const/16 v7, 0x19b

    if-ne p2, v7, :cond_26

    .line 2229
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion353(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2230
    const/16 p2, 0x19c

    .line 2233
    :cond_26
    const/16 v7, 0x19c

    if-ne p2, v7, :cond_27

    .line 2234
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion413(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2235
    const/16 p2, 0x19d

    .line 2238
    :cond_27
    const/16 v7, 0x19d

    if-ne p2, v7, :cond_28

    .line 2239
    const/4 v4, 0x1

    .line 2240
    const/16 p2, 0x19e

    .line 2243
    :cond_28
    const/16 v7, 0x19e

    if-ne p2, v7, :cond_29

    .line 2244
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion415(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2245
    const/4 v6, 0x1

    .line 2246
    const/16 p2, 0x19f

    .line 2249
    :cond_29
    const/16 v7, 0x19f

    if-ne p2, v7, :cond_2a

    .line 2250
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion416(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2251
    const/16 p2, 0x1a0

    .line 2254
    :cond_2a
    const/16 v7, 0x1a0

    if-ne p2, v7, :cond_2b

    .line 2255
    const/4 v2, 0x1

    .line 2256
    const/16 p2, 0x1a1

    .line 2260
    :cond_2b
    const/16 v7, 0x1f4

    if-ge p2, v7, :cond_2c

    .line 2261
    const/4 v5, 0x1

    .line 2264
    :cond_2c
    const/16 v7, 0x1f5

    if-ge p2, v7, :cond_2d

    .line 2265
    const/4 v5, 0x1

    .line 2266
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion501(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2267
    const/16 p2, 0x1f5

    .line 2270
    :cond_2d
    const/16 v7, 0x1f6

    if-ge p2, v7, :cond_2e

    .line 2271
    const/4 v5, 0x1

    .line 2272
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion502(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2273
    const/16 p2, 0x1f6

    .line 2276
    :cond_2e
    const/16 v7, 0x1f7

    if-ge p2, v7, :cond_2f

    .line 2277
    const/4 v5, 0x1

    .line 2278
    const/16 p2, 0x1f7

    .line 2281
    :cond_2f
    const/16 v7, 0x1f8

    if-ge p2, v7, :cond_30

    .line 2282
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion504(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2283
    const/16 p2, 0x1f8

    .line 2286
    :cond_30
    const/16 v7, 0x258

    if-ge p2, v7, :cond_31

    .line 2287
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion600(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2288
    const/4 v6, 0x1

    .line 2289
    const/16 p2, 0x258

    .line 2292
    :cond_31
    const/16 v7, 0x259

    if-ge p2, v7, :cond_32

    .line 2293
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion601(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2294
    const/16 p2, 0x259

    .line 2297
    :cond_32
    const/16 v7, 0x25a

    if-ge p2, v7, :cond_33

    .line 2298
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion602(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2299
    const/16 p2, 0x25a

    .line 2302
    :cond_33
    const/16 v7, 0x25b

    if-ge p2, v7, :cond_34

    .line 2303
    const/4 v6, 0x1

    .line 2304
    const/16 p2, 0x25b

    .line 2307
    :cond_34
    const/16 v7, 0x25c

    if-ge p2, v7, :cond_35

    .line 2308
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion604(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2309
    const/16 p2, 0x25c

    .line 2312
    :cond_35
    const/16 v7, 0x25d

    if-ge p2, v7, :cond_36

    .line 2313
    const/4 v6, 0x1

    .line 2314
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion605(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2315
    const/16 p2, 0x25d

    .line 2318
    :cond_36
    const/16 v7, 0x25e

    if-ge p2, v7, :cond_37

    .line 2319
    const/4 v6, 0x1

    .line 2320
    const/4 v2, 0x1

    .line 2321
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion606(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2322
    const/16 p2, 0x25e

    .line 2325
    :cond_37
    const/16 v7, 0x25f

    if-ge p2, v7, :cond_38

    .line 2326
    const/4 v6, 0x1

    .line 2327
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion607(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2328
    const/16 p2, 0x25f

    .line 2331
    :cond_38
    const/16 v7, 0x260

    if-ge p2, v7, :cond_39

    .line 2332
    const/4 v6, 0x1

    .line 2333
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion608(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2334
    const/16 p2, 0x260

    .line 2337
    :cond_39
    const/16 v7, 0x261

    if-ge p2, v7, :cond_3a

    .line 2338
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion609(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2339
    const/16 p2, 0x261

    .line 2342
    :cond_3a
    const/16 v7, 0x262

    if-ge p2, v7, :cond_3b

    .line 2343
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion610(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2344
    const/16 p2, 0x262

    .line 2347
    :cond_3b
    const/16 v7, 0x263

    if-ge p2, v7, :cond_3c

    .line 2348
    const/4 v6, 0x1

    .line 2349
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion611(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2350
    const/16 p2, 0x263

    .line 2353
    :cond_3c
    const/16 v7, 0x264

    if-ge p2, v7, :cond_3d

    .line 2354
    const/4 v6, 0x1

    .line 2355
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion612(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2356
    const/16 p2, 0x264

    .line 2359
    :cond_3d
    const/16 v7, 0x265

    if-ge p2, v7, :cond_3e

    .line 2360
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion613(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2361
    const/16 p2, 0x265

    .line 2364
    :cond_3e
    const/16 v7, 0x266

    if-ge p2, v7, :cond_3f

    .line 2366
    const/4 v6, 0x1

    .line 2367
    const/16 p2, 0x266

    .line 2370
    :cond_3f
    const/16 v7, 0x267

    if-ge p2, v7, :cond_40

    .line 2371
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion615(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2372
    const/16 p2, 0x267

    .line 2375
    :cond_40
    const/16 v7, 0x268

    if-ge p2, v7, :cond_41

    .line 2377
    const/4 v6, 0x1

    .line 2378
    const/16 p2, 0x268

    .line 2381
    :cond_41
    const/16 v7, 0x269

    if-ge p2, v7, :cond_42

    .line 2386
    const/4 v6, 0x1

    .line 2387
    const/16 p2, 0x269

    .line 2390
    :cond_42
    const/16 v7, 0x26a

    if-ge p2, v7, :cond_43

    .line 2391
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion618(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2392
    const/16 p2, 0x26a

    .line 2395
    :cond_43
    const/16 v7, 0x26b

    if-ge p2, v7, :cond_44

    .line 2396
    const/4 v6, 0x1

    .line 2397
    const/16 p2, 0x26b

    .line 2400
    :cond_44
    const/16 v7, 0x26c

    if-ge p2, v7, :cond_45

    .line 2401
    const/4 v6, 0x1

    .line 2402
    const/16 p2, 0x26c

    .line 2405
    :cond_45
    const/16 v7, 0x26d

    if-ge p2, v7, :cond_46

    .line 2406
    const/4 v5, 0x1

    .line 2407
    const/16 p2, 0x26d

    .line 2410
    :cond_46
    const/16 v7, 0x26e

    if-ge p2, v7, :cond_47

    .line 2411
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion622(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2412
    const/16 p2, 0x26e

    .line 2415
    :cond_47
    const/16 v7, 0x26f

    if-ge p2, v7, :cond_48

    .line 2417
    const/4 v5, 0x1

    .line 2418
    const/16 p2, 0x26f

    .line 2421
    :cond_48
    const/16 v7, 0x270

    if-ge p2, v7, :cond_49

    .line 2423
    const/4 v6, 0x1

    .line 2424
    const/16 p2, 0x270

    .line 2427
    :cond_49
    const/16 v7, 0x271

    if-ge p2, v7, :cond_4a

    .line 2429
    const/4 v5, 0x1

    .line 2430
    const/16 p2, 0x271

    .line 2433
    :cond_4a
    const/16 v7, 0x272

    if-ge p2, v7, :cond_4b

    .line 2434
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion626(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2435
    const/4 v6, 0x1

    .line 2436
    const/16 p2, 0x272

    .line 2439
    :cond_4b
    const/16 v7, 0x2bc

    if-ge p2, v7, :cond_4c

    .line 2440
    const/4 v1, 0x1

    .line 2441
    const/16 p2, 0x2bc

    .line 2444
    :cond_4c
    const/16 v7, 0x2bd

    if-ge p2, v7, :cond_4d

    .line 2445
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion701(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2446
    const/16 p2, 0x2bd

    .line 2449
    :cond_4d
    const/16 v7, 0x2be

    if-ge p2, v7, :cond_4e

    .line 2450
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion702(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2451
    const/16 p2, 0x2be

    .line 2454
    :cond_4e
    const/16 v7, 0x2bf

    if-ge p2, v7, :cond_4f

    .line 2456
    const/4 v5, 0x1

    .line 2457
    const/16 p2, 0x2bf

    .line 2460
    :cond_4f
    const/16 v7, 0x2c0

    if-ge p2, v7, :cond_50

    .line 2461
    const-string v7, "DROP TABLE IF EXISTS activities;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2462
    const/16 p2, 0x2c0

    .line 2465
    :cond_50
    const/16 v7, 0x2c1

    if-ge p2, v7, :cond_51

    .line 2469
    const/4 v5, 0x1

    .line 2470
    const/16 p2, 0x2c1

    .line 2473
    :cond_51
    const/16 v7, 0x2c2

    if-ge p2, v7, :cond_52

    .line 2476
    const/4 v0, 0x1

    .line 2477
    const/16 p2, 0x2c2

    .line 2480
    :cond_52
    const/16 v7, 0x2c3

    if-ge p2, v7, :cond_53

    .line 2481
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion707(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2482
    const/4 v6, 0x1

    .line 2483
    const/16 p2, 0x2c3

    .line 2486
    :cond_53
    const/16 v7, 0x2c4

    if-ge p2, v7, :cond_54

    .line 2489
    const/4 v3, 0x1

    .line 2490
    const/16 p2, 0x2c4

    .line 2492
    :cond_54
    const/16 v7, 0x2c5

    if-ge p2, v7, :cond_55

    .line 2495
    const/4 v3, 0x1

    .line 2496
    const/16 p2, 0x2c5

    .line 2499
    :cond_55
    const/16 v7, 0x2c6

    if-ge p2, v7, :cond_56

    .line 2500
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion710(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2501
    const/4 v6, 0x1

    .line 2502
    const/16 p2, 0x2c6

    .line 2505
    :cond_56
    const/16 v7, 0x320

    if-ge p2, v7, :cond_57

    .line 2506
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion800(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2507
    const/16 p2, 0x320

    .line 2510
    :cond_57
    const/16 v7, 0x321

    if-ge p2, v7, :cond_58

    .line 2511
    const-string v7, "database_time_created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    const/16 p2, 0x321

    .line 2516
    :cond_58
    const/16 v7, 0x322

    if-ge p2, v7, :cond_59

    .line 2517
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion802(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2518
    const/4 v6, 0x1

    .line 2519
    const/16 p2, 0x322

    .line 2522
    :cond_59
    const/16 v7, 0x323

    if-ge p2, v7, :cond_5a

    .line 2525
    const/4 v5, 0x1

    .line 2526
    const/16 p2, 0x323

    .line 2529
    :cond_5a
    if-eqz v6, :cond_5b

    .line 2530
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2531
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2532
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2533
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2534
    const/4 v2, 0x1

    .line 2535
    const/4 v0, 0x1

    .line 2538
    :cond_5b
    if-eqz v2, :cond_5c

    .line 2539
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2542
    :cond_5c
    if-eqz v3, :cond_5d

    .line 2543
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeLocaleData(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2545
    const/4 v4, 0x0

    .line 2546
    const/4 v5, 0x1

    .line 2547
    const/4 v0, 0x1

    .line 2550
    :cond_5d
    if-eqz v4, :cond_5e

    .line 2551
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildNameLookup(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2552
    const/4 v0, 0x1

    .line 2555
    :cond_5e
    if-eqz v5, :cond_5f

    .line 2556
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSearchIndex(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 2557
    const/4 v0, 0x1

    .line 2560
    :cond_5f
    if-eqz v1, :cond_60

    .line 2563
    const-string v7, "directoryScanComplete"

    const-string v8, "0"

    invoke-direct {p0, p1, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    :cond_60
    if-eqz v0, :cond_61

    .line 2567
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2570
    :cond_61
    if-eq p2, p3, :cond_0

    .line 2571
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error upgrading the database to version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method querySearchIndexContentForTest(J)Ljava/lang/String;
    .locals 5
    .param p1, "contactId"    # J

    .prologue
    .line 5614
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT content FROM search_index WHERE contact_id=CAST(? AS int)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method querySearchIndexTokensForTest(J)Ljava/lang/String;
    .locals 5
    .param p1, "contactId"    # J

    .prologue
    .line 5623
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT tokens FROM search_index WHERE contact_id=CAST(? AS int)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rawContactHasSuperPrimary(JJ)Z
    .locals 7
    .param p1, "rawContactId"    # J
    .param p3, "mimeTypeId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5584
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT EXISTS(SELECT 1 FROM data WHERE raw_contact_id=? AND mimetype_id=? AND is_super_primary<>0)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5591
    .local v0, "existsCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5594
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 5592
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 5594
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_1
    move v1, v2

    .line 5592
    goto :goto_0
.end method

.method protected rebuildSearchIndex()V
    .locals 2

    .prologue
    .line 3122
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSearchIndex(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3123
    return-void
.end method

.method public replaceStatusUpdate(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "dataId"    # Ljava/lang/Long;
    .param p2, "timestamp"    # J
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "resPackage"    # Ljava/lang/String;
    .param p6, "iconResource"    # Ljava/lang/Integer;
    .param p7, "labelResource"    # Ljava/lang/Integer;

    .prologue
    .line 5081
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5082
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT OR REPLACE INTO status_updates(status_update_data_id, status_ts,status,status_res_package,status_icon,status_label) VALUES (?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 5092
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5093
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5094
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5095
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5096
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 5097
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 5098
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5099
    return-void
.end method

.method public resetNameVerifiedForOtherRawContacts(J)V
    .locals 2
    .param p1, "rawContactId"    # J

    .prologue
    .line 5159
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5160
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE raw_contacts SET name_verified=0 WHERE contact_id=(SELECT contact_id FROM raw_contacts WHERE _id=?) AND _id!=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    .line 5169
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5170
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5171
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5172
    return-void
.end method

.method public setIsPrimary(JJJ)V
    .locals 2
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "mimeTypeId"    # J

    .prologue
    .line 5440
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5441
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE data SET is_primary=(_id=?) WHERE mimetype_id=?   AND raw_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 5447
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5448
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5449
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5450
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5451
    return-void
.end method

.method public setIsSuperPrimary(JJJ)V
    .locals 2
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "mimeTypeId"    # J

    .prologue
    .line 5477
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5478
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE data SET is_super_primary=(_id=?) WHERE mimetype_id=?   AND raw_contact_id IN (SELECT _id FROM raw_contacts WHERE contact_id =(SELECT contact_id FROM raw_contacts WHERE _id=?))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 5490
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5491
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5492
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5493
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5494
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 7
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 3184
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->needsToUpdateLocaleData(Ljava/util/Locale;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3202
    :goto_0
    return-void

    .line 3187
    :cond_0
    const-string v3, "ContactsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switching to locale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (ICU v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Llibcore/icu/ICU;->getIcuVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3191
    .local v1, "start":J
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3192
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 3193
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3195
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v0, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildLocaleData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Locale;Z)V

    .line 3196
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3198
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3201
    const-string v3, "ContactsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locale change completed in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3198
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4973
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 4974
    return-void
.end method

.method setUseStrictPhoneNumberComparisonForTest(Z)V
    .locals 0
    .param p1, "useStrict"    # Z

    .prologue
    .line 5604
    iput-boolean p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    .line 5605
    return-void
.end method

.method public updateAllVisible()V
    .locals 3

    .prologue
    .line 4575
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4576
    return-void
.end method

.method public updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "contactId"    # J

    .prologue
    .line 4590
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z

    .line 4591
    return-void
.end method

.method public updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z
    .locals 10
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "contactId"    # J
    .param p4, "onlyIfChanged"    # Z

    .prologue
    .line 4595
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4596
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4598
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 4599
    .local v0, "contactIdAsString":Ljava/lang/String;
    const-string v6, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    .line 4604
    .local v2, "mimetype":J
    const-string v6, "SELECT EXISTS (SELECT contact_id FROM raw_contacts JOIN data   ON (raw_contacts._id=raw_contact_id) WHERE contact_id=?1   AND mimetype_id=?2) OR EXISTS (SELECT _id FROM raw_contacts WHERE contact_id=?1   AND NOT EXISTS (SELECT _id  FROM groups  WHERE raw_contacts.account_id = groups.account_id  AND auto_add != 0)) OR EXISTS (SELECT _id FROM raw_contacts WHERE contact_id=?1   AND raw_contacts.account_id=(SELECT _id FROM accounts WHERE account_name IS NULL AND account_type IS NULL AND data_set IS NULL))"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    .line 4636
    .local v4, "newVisibility":Z
    :goto_0
    if-eqz p4, :cond_1

    .line 4637
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v5

    .line 4638
    .local v5, "oldVisibility":Z
    if-ne v5, v4, :cond_1

    .line 4639
    const/4 v6, 0x0

    .line 4655
    .end local v5    # "oldVisibility":Z
    :goto_1
    return v6

    .line 4604
    .end local v4    # "newVisibility":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 4643
    .restart local v4    # "newVisibility":Z
    :cond_1
    if-eqz v4, :cond_2

    .line 4644
    const-string v6, "INSERT OR IGNORE INTO default_directory VALUES(?)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4646
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForContact(J)V

    .line 4655
    :goto_2
    const/4 v6, 0x1

    goto :goto_1

    .line 4648
    :cond_2
    const-string v6, "DELETE FROM default_directory WHERE _id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4651
    const-string v6, "DELETE FROM search_index WHERE contact_id=CAST(? AS int)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z
    .locals 1
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "contactId"    # J

    .prologue
    .line 4582
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z

    move-result v0

    return v0
.end method

.method public updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 30
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J

    .prologue
    .line 5221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 5222
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    .line 5225
    :cond_0
    const/4 v6, 0x0

    .line 5226
    .local v6, "bestDisplayNameSource":I
    const/4 v7, 0x0

    .line 5227
    .local v7, "bestName":Lcom/android/providers/contacts/NameSplitter$Name;
    const/4 v4, 0x0

    .line 5228
    .local v4, "bestDisplayName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 5229
    .local v8, "bestPhoneticName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 5231
    .local v9, "bestPhoneticNameStyle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 5232
    const-string v26, "SELECT mimetype_id,is_primary,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11 FROM data WHERE raw_contact_id=? AND (data1 NOT NULL OR data8 NOT NULL OR data9 NOT NULL OR data10 NOT NULL OR data4 NOT NULL)"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, "c":Landroid/database/Cursor;
    move-object v5, v4

    .line 5234
    .end local v4    # "bestDisplayName":Ljava/lang/String;
    .local v5, "bestDisplayName":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 5235
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 5236
    .local v15, "mimeType":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDisplayNameSourceForMimeTypeId(I)I

    move-result v25

    .line 5237
    .local v25, "source":I
    move/from16 v0, v25

    if-lt v0, v6, :cond_1

    if-eqz v25, :cond_1

    .line 5241
    move/from16 v0, v25

    if-ne v0, v6, :cond_2

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_1

    .line 5246
    :cond_2
    int-to-long v0, v15

    move-wide/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredName()J

    move-result-wide v28

    cmp-long v26, v26, v28

    if-nez v26, :cond_7

    .line 5248
    if-eqz v7, :cond_4

    .line 5249
    new-instance v16, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct/range {v16 .. v16}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 5254
    .local v16, "name":Lcom/android/providers/contacts/NameSplitter$Name;
    :goto_1
    const/16 v26, 0x5

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 5255
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 5256
    const/16 v26, 0x6

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 5257
    const/16 v26, 0x4

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 5258
    const/16 v26, 0x7

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 5259
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_5

    const/16 v26, 0x0

    :goto_2
    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 5262
    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 5263
    const/16 v26, 0x9

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 5264
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    .line 5265
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v26, 0x0

    :goto_3
    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 5268
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/contacts/NameSplitter$Name;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_3

    .line 5269
    move/from16 v6, v25

    .line 5270
    move-object/from16 v7, v16

    :cond_3
    move-object v4, v5

    .end local v5    # "bestDisplayName":Ljava/lang/String;
    .end local v16    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    .restart local v4    # "bestDisplayName":Ljava/lang/String;
    :goto_4
    move-object v5, v4

    .line 5309
    .end local v4    # "bestDisplayName":Ljava/lang/String;
    .restart local v5    # "bestDisplayName":Ljava/lang/String;
    goto/16 :goto_0

    .line 5251
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mName:Lcom/android/providers/contacts/NameSplitter$Name;

    move-object/from16 v16, v0

    .line 5252
    .restart local v16    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/contacts/NameSplitter$Name;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 5312
    .end local v15    # "mimeType":I
    .end local v16    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    .end local v25    # "source":I
    :catchall_0
    move-exception v26

    move-object v4, v5

    .end local v5    # "bestDisplayName":Ljava/lang/String;
    .restart local v4    # "bestDisplayName":Ljava/lang/String;
    :goto_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v26

    .line 5259
    .end local v4    # "bestDisplayName":Ljava/lang/String;
    .restart local v5    # "bestDisplayName":Ljava/lang/String;
    .restart local v15    # "mimeType":I
    .restart local v16    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    .restart local v25    # "source":I
    :cond_5
    const/16 v26, 0xb

    :try_start_1
    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    goto :goto_2

    .line 5265
    :cond_6
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    goto :goto_3

    .line 5272
    .end local v16    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_7
    int-to-long v0, v15

    move-wide/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForOrganization()J

    move-result-wide v28

    cmp-long v26, v26, v28

    if-nez v26, :cond_a

    .line 5273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 5274
    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v27, v0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 5275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 5276
    move/from16 v6, v25

    .line 5277
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5279
    .end local v5    # "bestDisplayName":Ljava/lang/String;
    .restart local v4    # "bestDisplayName":Ljava/lang/String;
    const/16 v26, 0x9

    :try_start_2
    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5281
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_8

    const/4 v9, 0x0

    :goto_6
    goto/16 :goto_4

    :cond_8
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    goto :goto_6

    .line 5286
    .end local v4    # "bestDisplayName":Ljava/lang/String;
    .restart local v5    # "bestDisplayName":Ljava/lang/String;
    :cond_9
    const/16 v26, 0x5

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v27, v0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 5287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 5288
    move/from16 v6, v25

    .line 5289
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 5291
    .end local v5    # "bestDisplayName":Ljava/lang/String;
    .restart local v4    # "bestDisplayName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 5292
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 5299
    .end local v4    # "bestDisplayName":Ljava/lang/String;
    .restart local v5    # "bestDisplayName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 5300
    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v27, v0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 5301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 5302
    move/from16 v6, v25

    .line 5303
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5305
    .end local v5    # "bestDisplayName":Ljava/lang/String;
    .restart local v4    # "bestDisplayName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 5306
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 5312
    .end local v4    # "bestDisplayName":Ljava/lang/String;
    .end local v15    # "mimeType":I
    .end local v25    # "source":I
    .restart local v5    # "bestDisplayName":Ljava/lang/String;
    :cond_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5319
    const/16 v22, 0x0

    .line 5320
    .local v22, "sortKeyPrimary":Ljava/lang/String;
    const/16 v21, 0x0

    .line 5321
    .local v21, "sortKeyAlternative":Ljava/lang/String;
    const/4 v13, 0x0

    .line 5323
    .local v13, "displayNameStyle":I
    const/16 v26, 0x28

    move/from16 v0, v26

    if-ne v6, v0, :cond_16

    .line 5324
    iget v13, v7, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 5325
    const/16 v26, 0x2

    move/from16 v0, v26

    if-eq v13, v0, :cond_c

    if-nez v13, :cond_d

    .line 5327
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v13

    .line 5328
    iput v13, v7, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 5331
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v12

    .line 5332
    .local v12, "displayNamePrimary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v11

    .line 5334
    .local v11, "displayNameAlternative":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 5335
    move-object/from16 v24, v12

    .line 5336
    .local v24, "sortNamePrimary":Ljava/lang/String;
    move-object/from16 v23, v11

    .line 5342
    .local v23, "sortNameAlternative":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/android/providers/contacts/NameSplitter;->joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;

    move-result-object v8

    .line 5343
    iget v9, v7, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 5349
    :goto_8
    if-eqz v8, :cond_17

    .line 5350
    if-nez v12, :cond_e

    .line 5351
    move-object v12, v8

    .line 5353
    :cond_e
    if-nez v11, :cond_f

    .line 5354
    move-object v11, v8

    .line 5358
    :cond_f
    move-object/from16 v21, v8

    move-object/from16 v22, v8

    .line 5359
    if-nez v9, :cond_10

    .line 5360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v9

    .line 5379
    :cond_10
    :goto_9
    if-nez v22, :cond_11

    .line 5380
    move-object/from16 v22, v24

    .line 5381
    move-object/from16 v21, v23

    .line 5384
    :cond_11
    const-string v20, ""

    .line 5385
    .local v20, "phonebookLabelPrimary":Ljava/lang/String;
    const-string v19, ""

    .line 5386
    .local v19, "phonebookLabelAlternative":Ljava/lang/String;
    const/16 v18, 0x0

    .line 5387
    .local v18, "phonebookBucketPrimary":I
    const/16 v17, 0x0

    .line 5388
    .local v17, "phonebookBucketAlternative":I
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getInstance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v14

    .line 5390
    .local v14, "localeUtils":Lcom/android/providers/contacts/ContactLocaleUtils;
    if-eqz v22, :cond_12

    .line 5391
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getBucketIndex(Ljava/lang/String;)I

    move-result v18

    .line 5392
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v20

    .line 5394
    :cond_12
    if-eqz v21, :cond_13

    .line 5395
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getBucketIndex(Ljava/lang/String;)I

    move-result v17

    .line 5396
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v19

    .line 5399
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    if-nez v26, :cond_14

    .line 5400
    const-string v26, "UPDATE raw_contacts SET display_name_source=?,display_name=?,display_name_alt=?,phonetic_name=?,phonetic_name_style=?,sort_key=?,phonebook_label=?,phonebook_bucket=?,sort_key_alt=?,phonebook_label_alt=?,phonebook_bucket_alt=? WHERE _id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 5417
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    int-to-long v0, v6

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    int-to-long v0, v9

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0xb

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    const/16 v27, 0xc

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5430
    return-void

    .line 5338
    .end local v14    # "localeUtils":Lcom/android/providers/contacts/ContactLocaleUtils;
    .end local v17    # "phonebookBucketAlternative":I
    .end local v18    # "phonebookBucketPrimary":I
    .end local v19    # "phonebookLabelAlternative":Ljava/lang/String;
    .end local v20    # "phonebookLabelPrimary":Ljava/lang/String;
    .end local v23    # "sortNameAlternative":Ljava/lang/String;
    .end local v24    # "sortNamePrimary":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v24

    .line 5339
    .restart local v24    # "sortNamePrimary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "sortNameAlternative":Ljava/lang/String;
    goto/16 :goto_7

    .line 5345
    .end local v11    # "displayNameAlternative":Ljava/lang/String;
    .end local v12    # "displayNamePrimary":Ljava/lang/String;
    .end local v23    # "sortNameAlternative":Ljava/lang/String;
    .end local v24    # "sortNamePrimary":Ljava/lang/String;
    :cond_16
    move-object v11, v5

    .restart local v11    # "displayNameAlternative":Ljava/lang/String;
    move-object v12, v5

    .line 5346
    .restart local v12    # "displayNamePrimary":Ljava/lang/String;
    move-object/from16 v23, v5

    .restart local v23    # "sortNameAlternative":Ljava/lang/String;
    move-object/from16 v24, v5

    .restart local v24    # "sortNamePrimary":Ljava/lang/String;
    goto/16 :goto_8

    .line 5363
    :cond_17
    const/4 v9, 0x0

    .line 5364
    if-nez v13, :cond_1a

    .line 5365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v13

    .line 5366
    if-eqz v13, :cond_18

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_19

    .line 5368
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v9}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v13

    .line 5371
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v13

    .line 5373
    :cond_1a
    const/16 v26, 0x3

    move/from16 v0, v26

    if-eq v13, v0, :cond_1b

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v13, v0, :cond_10

    .line 5375
    :cond_1b
    move-object/from16 v21, v24

    move-object/from16 v22, v24

    goto/16 :goto_9

    .line 5312
    .end local v5    # "bestDisplayName":Ljava/lang/String;
    .end local v11    # "displayNameAlternative":Ljava/lang/String;
    .end local v12    # "displayNamePrimary":Ljava/lang/String;
    .end local v13    # "displayNameStyle":I
    .end local v21    # "sortKeyAlternative":Ljava/lang/String;
    .end local v22    # "sortKeyPrimary":Ljava/lang/String;
    .end local v23    # "sortNameAlternative":Ljava/lang/String;
    .end local v24    # "sortNamePrimary":Ljava/lang/String;
    .restart local v4    # "bestDisplayName":Ljava/lang/String;
    .restart local v15    # "mimeType":I
    .restart local v25    # "source":I
    :catchall_1
    move-exception v26

    goto/16 :goto_5

    .end local v4    # "bestDisplayName":Ljava/lang/String;
    .restart local v5    # "bestDisplayName":Ljava/lang/String;
    :cond_1c
    move-object v4, v5

    .end local v5    # "bestDisplayName":Ljava/lang/String;
    .restart local v4    # "bestDisplayName":Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public wipeData()V
    .locals 2

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4280
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DELETE FROM accounts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4281
    const-string v1, "DELETE FROM contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4282
    const-string v1, "DELETE FROM raw_contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4283
    const-string v1, "DELETE FROM stream_items;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4284
    const-string v1, "DELETE FROM stream_item_photos;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4285
    const-string v1, "DELETE FROM photo_files;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4286
    const-string v1, "DELETE FROM data;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4287
    const-string v1, "DELETE FROM phone_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4288
    const-string v1, "DELETE FROM name_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4289
    const-string v1, "DELETE FROM groups;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4290
    const-string v1, "DELETE FROM agg_exceptions;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4291
    const-string v1, "DELETE FROM settings;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4292
    const-string v1, "DELETE FROM calls;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4293
    const-string v1, "DELETE FROM directories;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4294
    const-string v1, "DELETE FROM search_index;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4295
    const-string v1, "DELETE FROM deleted_contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4297
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->initializeCache(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4300
    return-void
.end method
