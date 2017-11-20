.class public Lcom/android/providers/contacts/VoicemailContentProvider;
.super Landroid/content/ContentProvider;
.source "VoicemailContentProvider.java"

# interfaces
.implements Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/VoicemailContentProvider$1;,
        Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    }
.end annotation


# instance fields
.field private mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

.field private mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

.field private mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 164
    return-void
.end method

.method private checkPackagePermission(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V
    .locals 5
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasFullAccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider %s does not have %s permission.\nPlease set query parameter \'%s\' in the URI.\nURI: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage_()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "source_package"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    :cond_1
    return-void
.end method

.method private final checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "voicemailSourcePackage"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 323
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    const-string v1, "Permission denied for URI: %s\n. Package %s cannot perform this operation for %s. Requires %s permission."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    const-string v4, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "errorMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailPermissions;->checkCallerHasOwnVoicemailAccess()V

    .line 300
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 301
    .local v0, "uriData":Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagePermission(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V

    .line 302
    return-object v0
.end method

.method private varargs checkPermissionsAndCreateUriData(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "valuesArray"    # [Landroid/content/ContentValues;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v3

    .line 311
    .local v3, "uriData":Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/ContentValues;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 312
    .local v4, "values":Landroid/content/ContentValues;
    invoke-direct {p0, v3, v4}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkSourcePackageSameIfSet(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    return-object v3
.end method

.method private checkPermissionsAndCreateUriDataForReadOperation(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    goto :goto_0
.end method

.method private checkSourcePackageSameIfSet(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "source_package"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source_package in URI was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but doesn\'t match source_package in ContentValues which was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "source_package"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    return-void
.end method

.method private getPackageRestrictionClause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasFullAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "source_package"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;
    .locals 3
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    .prologue
    .line 147
    sget-object v0, Lcom/android/providers/contacts/VoicemailContentProvider$1;->$SwitchMap$com$android$providers$contacts$VoicemailUriType:[I

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUriType()Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible, all cases are covered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 153
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    goto :goto_0

    .line 155
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uri type for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkAndAddSourcePackageIntoValues(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 245
    const-string v1, "source_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "provider":Ljava/lang/String;
    :goto_0
    const-string v1, "source_package"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v0    # "provider":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasFullAccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage_()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_package"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPackagesMatch(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 256
    :cond_1
    return-void

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage_()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 128
    .local v1, "uriData":Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    new-instance v0, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "selectionBuilder":Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 130
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, p3}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->delete(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method getCallingPackage_()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 364
    .local v2, "caller":I
    if-nez v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-object v3

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "callerPackages":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-eqz v7, :cond_0

    .line 371
    array-length v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 372
    aget-object v3, v4, v9

    goto :goto_0

    .line 377
    :cond_2
    aget-object v1, v4, v9

    .line 378
    .local v1, "bestSoFar":Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v3, v0, v5

    .line 379
    .local v3, "callerPackage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v7, v3}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasFullAccess(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 383
    iget-object v7, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v7, v3}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasOwnVoicemailAccess(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 384
    move-object v1, v3

    .line 378
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v3    # "callerPackage":Ljava/lang/String;
    :cond_4
    move-object v3, v1

    .line 387
    goto :goto_0
.end method

.method getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, "uriData":Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    :try_start_0
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->getType(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 102
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 103
    .local v0, "uriData":Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->insert(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 58
    const-string v0, "ContactsPerf"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "ContactsPerf"

    const-string v1, "VoicemailContentProvider.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v2

    .line 62
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailPermissions:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 63
    new-instance v0, Lcom/android/providers/contacts/VoicemailContentTable;

    const-string v1, "calls"

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailContentTable;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;Lcom/android/providers/contacts/CallLogInsertionHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailContentTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 65
    new-instance v0, Lcom/android/providers/contacts/VoicemailStatusTable;

    const-string v1, "voicemail_status"

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/providers/contacts/VoicemailStatusTable;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->mVoicemailStatusTable:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 67
    const-string v0, "ContactsPerf"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "ContactsPerf"

    const-string v1, "VoicemailContentProvider.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public openDataFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uriData"    # Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/providers/contacts/VoicemailContentProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "uriData":Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    const-string v1, "r"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForReadOperation(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 142
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->openFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriDataForReadOperation(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 110
    .local v1, "uriData":Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    new-instance v6, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v6, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v6, "selectionBuilder":Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 112
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->query(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 118
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->checkPermissionsAndCreateUriData(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 119
    .local v1, "uriData":Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    new-instance v0, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v0, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "selectionBuilder":Lcom/android/providers/contacts/util/SelectionBuilder;
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getPackageRestrictionClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 121
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->getTableDelegate(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, p2, v3, p4}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->update(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
