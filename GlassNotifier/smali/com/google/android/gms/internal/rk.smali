.class public final Lcom/google/android/gms/internal/rk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/rk$a;
    }
.end annotation


# static fields
.field public static final aEK:[Ljava/lang/String;

.field private static aEL:Z

.field private static aEM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/rk;->aEK:[Ljava/lang/String;

    sput-boolean v3, Lcom/google/android/gms/internal/rk;->aEL:Z

    sput-boolean v3, Lcom/google/android/gms/internal/rk;->aEM:Z

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/rf;)V
    .locals 1

    const-string v0, "(mimetype IN (\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/phone_v2\'))"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rf;->dc(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/rf;ZLandroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/internal/rk;->ab(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(contact_id IN (SELECT _id FROM default_directory))"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rf;->dc(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/rk;->rB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rf;->dc(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "(in_visible_group=1)"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rf;->dc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final declared-synchronized ab(Landroid/content/Context;)Z
    .locals 8

    const/4 v6, 0x0

    const-class v7, Lcom/google/android/gms/internal/rk;

    monitor-enter v7

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/rk;->aEM:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/internal/rk;->aEL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v7

    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/google/android/gms/internal/rk;->aEM:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "EXISTS (SELECT _id FROM default_directory LIMIT 1)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/google/android/gms/internal/rk;->aEL:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    sget-boolean v0, Lcom/google/android/gms/internal/rk;->aEL:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_5
    const-string v2, "PeopleAggregator"

    const-string v3, "Error occurred when checking for default_directory table."

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/rc;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PeopleAggregator"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/rc;->t(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_2

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static b(Landroid/database/Cursor;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/database/Cursor;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->K(Z)V

    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public static final rB()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "((data_set IS NULL) OR (account_type=\'com.google\' AND data_set!=\'plus\'))"

    goto :goto_0
.end method
