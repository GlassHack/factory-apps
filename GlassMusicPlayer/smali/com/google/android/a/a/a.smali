.class public final Lcom/google/android/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://com.google.android.music.MusicContent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 130
    sget-object v0, Lcom/google/android/a/a/a;->a:Landroid/net/Uri;

    const-string v1, "isNautilusEnabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 133
    if-nez v1, :cond_0

    .line 143
    :goto_0
    return v7

    .line 137
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v6

    .line 143
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_0

    :cond_1
    move v0, v7

    .line 138
    goto :goto_1

    .line 143
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static b(Landroid/content/ContentResolver;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 151
    sget-object v0, Lcom/google/android/a/a/a;->a:Landroid/net/Uri;

    const-string v1, "isAcceptedUser"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 154
    if-nez v1, :cond_0

    .line 164
    :goto_0
    return v7

    .line 158
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v6

    .line 164
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_0

    :cond_1
    move v0, v7

    .line 159
    goto :goto_1

    .line 164
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
