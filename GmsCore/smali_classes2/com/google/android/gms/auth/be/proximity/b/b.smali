.class final Lcom/google/android/gms/auth/be/proximity/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 72
    const-string v0, "auth.proximity.permit_store"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 73
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Creating database %s..."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "auth.proximity.permit_store"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "permit"

    sget-object v2, Lcom/google/android/gms/auth/be/proximity/b/f;->b:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/auth/be/proximity/b/f;->c:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/auth/g/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    const-string v1, "permit__requester_access"

    sget-object v2, Lcom/google/android/gms/auth/be/proximity/b/g;->a:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/auth/be/proximity/b/g;->b:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/auth/g/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/b/f;->d:[[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 94
    const-string v5, "permit"

    invoke-static {p1, v5, v4}, Lcom/google/android/gms/auth/g/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/b/g;->c:[[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 97
    const-string v4, "permit__requester_access"

    invoke-static {p1, v4, v3}, Lcom/google/android/gms/auth/g/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_1
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 103
    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/b/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Opening database %s..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "auth.proximity.permit_store"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    .line 108
    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/b/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrading from version %d to version %s..."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method
