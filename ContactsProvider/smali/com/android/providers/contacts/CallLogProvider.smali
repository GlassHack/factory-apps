.class public Lcom/android/providers/contacts/CallLogProvider;
.super Landroid/content/ContentProvider;
.source "CallLogProvider.java"


# static fields
.field private static final EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

.field private static final VOICEMAIL_TYPE:Ljava/lang/Integer;

.field private static final sCallsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

.field private mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mUseStrictPhoneNumberComparation:Z

.field private mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    const-string v0, "type"

    const-wide/16 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->getInequalityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 62
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/filter/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 72
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "presentation"

    const-string v2, "presentation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "voicemail_uri"

    const-string v2, "voicemail_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_read"

    const-string v2, "is_read"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "countryiso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "geocoded_location"

    const-string v2, "geocoded_location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lookup_uri"

    const-string v2, "lookup_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "matched_number"

    const-string v2, "matched_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "normalized_number"

    const-string v2, "normalized_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "formatted_number"

    const-string v2, "formatted_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->VOICEMAIL_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private checkIsAllowVoicemailRequest(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->isAllowVoicemailRequest(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri %s cannot be used for voicemail record. Please set \'%s=true\' in the uri."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "allow_voicemails"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    return-void
.end method

.method private checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selectionBuilder"    # Lcom/android/providers/contacts/util/SelectionBuilder;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->isAllowVoicemailRequest(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasFullAccess()V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->EXCLUDE_VOICEMAIL_SELECTION:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    goto :goto_0
.end method

.method private getDatabaseModifier(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .param p1, "insertHelper"    # Landroid/database/DatabaseUtils$InsertHelper;

    .prologue
    .line 315
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method private getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 307
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method

.method private getIntParam(Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 195
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "valueString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 201
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Integer required for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parameter but value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' was found instead."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private hasVoicemailValue(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 320
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->VOICEMAIL_TYPE:Ljava/lang/Integer;

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isAllowVoicemailRequest(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 343
    const-string v0, "allow_voicemails"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private parseCallIdFromUri(Landroid/net/Uri;)J
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 368
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid call id in uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-static {p1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 282
    new-instance v2, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v2, p2}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "selectionBuilder":Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 285
    iget-object v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 286
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 287
    .local v1, "matchedUriId":I
    packed-switch v1, :pswitch_data_0

    .line 292
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, p3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 211
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 212
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/calls"

    .line 218
    :goto_0
    return-object v1

    .line 216
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/calls"

    goto :goto_0

    .line 218
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/calls"

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 226
    sget-object v4, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-static {v4, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 229
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->hasVoicemailValue(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->checkIsAllowVoicemailRequest(Landroid/net/Uri;)V

    .line 231
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v4}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasFullAccess()V

    .line 233
    :cond_0
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v4, :cond_1

    .line 234
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 235
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v5, "calls"

    invoke-direct {v4, v1, v5}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 238
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 241
    .local v0, "copiedValues":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    invoke-interface {v4, v0}, Lcom/android/providers/contacts/CallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    .line 243
    iget-object v4, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-direct {p0, v4}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 244
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 245
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 247
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 101
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lcom/android/providers/contacts/CallLogProvider;->setAppOps(II)V

    .line 102
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "ContactsPerf"

    const-string v2, "CallLogProvider.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    .line 110
    new-instance v1, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v1, v0}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->mCallLogInsertionHelper:Lcom/android/providers/contacts/CallLogInsertionHelper;

    .line 112
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const-string v1, "ContactsPerf"

    const-string v2, "CallLogProvider.onCreate finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 132
    .local v3, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "calls"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 133
    sget-object v5, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 134
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 136
    new-instance v18, Lcom/android/providers/contacts/util/SelectionBuilder;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .local v18, "selectionBuilder":Lcom/android/providers/contacts/util/SelectionBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 139
    sget-object v5, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 140
    .local v14, "match":I
    packed-switch v14, :pswitch_data_0

    .line 165
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 145
    :pswitch_0
    const-string v5, "_id"

    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 168
    :goto_0
    :pswitch_1
    const-string v5, "limit"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/contacts/CallLogProvider;->getIntParam(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v13

    .line 169
    .local v13, "limit":I
    const-string v5, "offset"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/providers/contacts/CallLogProvider;->getIntParam(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v15

    .line 170
    .local v15, "offset":I
    const/4 v11, 0x0

    .line 171
    .local v11, "limitClause":Ljava/lang/String;
    if-lez v13, :cond_0

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 175
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 176
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 178
    .local v12, "c":Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v12, v5, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 181
    :cond_1
    return-object v12

    .line 151
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "limitClause":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "limit":I
    .end local v15    # "offset":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    .line 152
    .local v16, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v17, v5

    .line 153
    .local v17, "phoneNumber":Ljava/lang/String;
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 154
    const-string v5, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 155
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/providers/contacts/CallLogProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v5, :cond_3

    const-string v5, ", 1)"

    :goto_2
    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 152
    .end local v17    # "phoneNumber":Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 156
    .restart local v17    # "phoneNumber":Ljava/lang/String;
    :cond_3
    const-string v5, ", 0)"

    goto :goto_2

    .line 158
    :cond_4
    const-string v5, "presentation!=1"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 252
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->checkForSupportedColumns(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 255
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->hasVoicemailValue(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->checkIsAllowVoicemailRequest(Landroid/net/Uri;)V

    .line 259
    :cond_0
    new-instance v2, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v2, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "selectionBuilder":Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/CallLogProvider;->checkVoicemailPermissionAndAddRestriction(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 262
    iget-object v3, p0, Lcom/android/providers/contacts/CallLogProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 263
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/contacts/CallLogProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 264
    .local v1, "matchedUriId":I
    packed-switch v1, :pswitch_data_0

    .line 273
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    :pswitch_0
    const-string v3, "_id"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->parseCallIdFromUri(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 276
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseModifier(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5, p4}, Lcom/android/providers/contacts/DatabaseModifier;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
