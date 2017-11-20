.class final Lcom/google/android/gms/playlog/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/database/sqlite/SQLiteOpenHelper;

.field b:Ljava/lang/Integer;

.field c:Z

.field d:Ljava/lang/String;

.field e:[Ljava/lang/String;

.field private f:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/j;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 77
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/j;->f:Ljava/lang/Long;

    .line 78
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/j;->b:Ljava/lang/Integer;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/b/j;->c:Z

    .line 80
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/j;->d:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/j;->e:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;B)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/gms/playlog/b/j;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/b/j;->a()V

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/j;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 145
    const-string v1, "play_logger_context"

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/j;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/playlog/b/j;->e:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method final a()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/b/j;->c:Z

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/j;->f:Ljava/lang/Long;

    if-eqz v0, :cond_7

    move v0, v1

    .line 110
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/j;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 111
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 113
    :goto_2
    if-nez v3, :cond_1

    .line 114
    iput-object v4, p0, Lcom/google/android/gms/playlog/b/j;->d:Ljava/lang/String;

    .line 115
    iput-object v4, p0, Lcom/google/android/gms/playlog/b/j;->e:[Ljava/lang/String;

    .line 116
    iput-boolean v2, p0, Lcom/google/android/gms/playlog/b/j;->c:Z

    goto :goto_0

    .line 120
    :cond_1
    new-array v4, v3, [Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/j;->f:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 123
    const-string v0, "_id = ?"

    aput-object v0, v4, v2

    move v0, v1

    .line 125
    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/playlog/b/j;->b:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 126
    const-string v5, "hash = ?"

    aput-object v5, v4, v0

    .line 128
    :cond_2
    const-string v0, " AND "

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/j;->d:Ljava/lang/String;

    .line 130
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/j;->e:[Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/j;->f:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/j;->e:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/j;->f:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 135
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/j;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/j;->e:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/j;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 139
    :cond_3
    iput-boolean v2, p0, Lcom/google/android/gms/playlog/b/j;->c:Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v3, v0

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_1
.end method
