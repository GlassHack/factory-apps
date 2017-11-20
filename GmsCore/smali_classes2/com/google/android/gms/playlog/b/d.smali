.class final Lcom/google/android/gms/playlog/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteOpenHelper;

.field private b:Ljava/lang/Long;

.field private c:[J

.field private d:Ljava/lang/Long;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/d;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 92
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/d;->b:Ljava/lang/Long;

    .line 93
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/d;->c:[J

    .line 94
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/d;->d:Ljava/lang/Long;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/b/d;->e:Z

    .line 96
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/d;->f:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/google/android/gms/playlog/b/d;->g:[Ljava/lang/String;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;B)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/gms/playlog/b/d;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method private a([J)Lcom/google/android/gms/playlog/b/d;
    .locals 3

    .prologue
    .line 126
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ids.length exceeds 512: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->c:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :goto_0
    return-object p0

    .line 133
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/playlog/b/d;->c:[J

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/b/d;->e:Z

    goto :goto_0
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/b/d;->e:Z

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->b:Ljava/lang/Long;

    if-eqz v0, :cond_c

    move v0, v1

    move v3, v1

    .line 157
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/playlog/b/d;->c:[J

    if-eqz v4, :cond_1

    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 159
    iget-object v4, p0, Lcom/google/android/gms/playlog/b/d;->c:[J

    array-length v4, v4

    add-int/2addr v0, v4

    .line 161
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/playlog/b/d;->d:Ljava/lang/Long;

    if-eqz v4, :cond_b

    .line 162
    add-int/lit8 v3, v3, 0x1

    .line 163
    add-int/lit8 v0, v0, 0x1

    move v5, v0

    .line 165
    :goto_2
    if-nez v3, :cond_2

    .line 166
    iput-object v6, p0, Lcom/google/android/gms/playlog/b/d;->f:Ljava/lang/String;

    .line 167
    iput-object v6, p0, Lcom/google/android/gms/playlog/b/d;->g:[Ljava/lang/String;

    .line 168
    iput-boolean v2, p0, Lcom/google/android/gms/playlog/b/d;->e:Z

    goto :goto_0

    .line 172
    :cond_2
    new-array v6, v3, [Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->b:Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 175
    const-string v0, "_id = ?"

    aput-object v0, v6, v2

    move v0, v1

    .line 177
    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/d;->c:[J

    if-eqz v3, :cond_5

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v3, "_id IN ("

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v2

    .line 179
    :goto_4
    iget-object v4, p0, Lcom/google/android/gms/playlog/b/d;->c:[J

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 180
    if-nez v3, :cond_3

    const-string v4, "?"

    :goto_5
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 180
    :cond_3
    const-string v4, ", ?"

    goto :goto_5

    .line 182
    :cond_4
    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    move v0, v3

    .line 185
    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/d;->d:Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 186
    const-string v3, "play_logger_context_id = ?"

    aput-object v3, v6, v0

    .line 188
    :cond_6
    const-string v0, " AND "

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/d;->f:Ljava/lang/String;

    .line 190
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/d;->g:[Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->b:Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->g:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/d;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 195
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->c:[J

    if-eqz v0, :cond_7

    .line 196
    iget-object v4, p0, Lcom/google/android/gms/playlog/b/d;->c:[J

    array-length v5, v4

    move v0, v2

    :goto_7
    if-ge v0, v5, :cond_7

    aget-wide v6, v4, v0

    .line 197
    iget-object v8, p0, Lcom/google/android/gms/playlog/b/d;->g:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v1

    .line 196
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_7

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->d:Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->g:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/d;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 204
    :cond_8
    iput-boolean v2, p0, Lcom/google/android/gms/playlog/b/d;->e:Z

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_6

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    move v5, v0

    goto/16 :goto_2

    :cond_c
    move v0, v2

    move v3, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/d;->b()V

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 233
    const-string v2, "log_event"

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/playlog/b/d;->g:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/d;->b()V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM log_event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/d;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 224
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/d;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/d;->g:[Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 208
    invoke-direct {p0}, Lcom/google/android/gms/playlog/b/d;->b()V

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    const-string v1, "log_event"

    iget-object v3, p0, Lcom/google/android/gms/playlog/b/d;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/playlog/b/d;->g:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)Lcom/google/android/gms/playlog/b/d;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->d:Ljava/lang/Long;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->d:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/d;->d:Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object p0

    .line 143
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/playlog/b/d;->d:Ljava/lang/Long;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/b/d;->e:Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/gms/playlog/b/d;
    .locals 8

    .prologue
    .line 110
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "idList.size() exceeds 512: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    if-nez p1, :cond_1

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/playlog/b/d;->a([J)Lcom/google/android/gms/playlog/b/d;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 117
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 120
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v1

    move v1, v2

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/gms/playlog/b/d;->a([J)Lcom/google/android/gms/playlog/b/d;

    move-result-object v0

    goto :goto_0
.end method
