.class final Lcom/google/android/location/places/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/bs;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:J

.field private static final c:J

.field private static final d:J


# instance fields
.field private final e:Lcom/google/android/location/k/b;

.field private final f:Lcom/google/android/location/places/bj;

.field private final g:Lcom/google/android/location/f/a;

.field private final h:Landroid/database/sqlite/SQLiteDatabase;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x8

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_hash_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "insertion_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/places/bg;->a:[Ljava/lang/String;

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/bg;->b:J

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/bg;->c:J

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/bg;->d:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/location/k/b;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p3, p0, Lcom/google/android/location/places/bg;->e:Lcom/google/android/location/k/b;

    .line 91
    new-instance v0, Lcom/google/android/location/places/bj;

    invoke-direct {v0, p1, p2}, Lcom/google/android/location/places/bj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/places/bg;->f:Lcom/google/android/location/places/bj;

    .line 92
    iget-object v0, p0, Lcom/google/android/location/places/bg;->e:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/places/bg;->i:J

    .line 93
    new-instance v0, Lcom/google/android/location/places/as;

    invoke-direct {v0, p1}, Lcom/google/android/location/places/as;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0}, Lcom/google/android/location/places/as;->a()V

    .line 95
    invoke-virtual {v0}, Lcom/google/android/location/places/as;->b()Lcom/google/android/location/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/bg;->g:Lcom/google/android/location/f/a;

    .line 96
    iget-object v0, p0, Lcom/google/android/location/places/bg;->f:Lcom/google/android/location/places/bj;

    invoke-virtual {v0}, Lcom/google/android/location/places/bj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/bg;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    return-void
.end method

.method private static a(Lcom/google/android/location/places/bh;)J
    .locals 8

    .prologue
    const-wide v4, 0x5382cbefe44bL

    .line 218
    .line 219
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_0
    iget-object v0, p0, Lcom/google/android/location/places/bh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x4

    if-ge v1, v0, :cond_0

    .line 220
    const-wide/16 v6, 0x89

    mul-long/2addr v2, v6

    iget-object v0, p0, Lcom/google/android/location/places/bh;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 222
    :cond_0
    const-wide/16 v0, 0x9d

    mul-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/location/places/bg;
    .locals 3

    .prologue
    .line 80
    const-string v0, "wifi_place_cache.db"

    new-instance v1, Lcom/google/android/location/os/real/ap;

    invoke-direct {v1}, Lcom/google/android/location/os/real/ap;-><init>()V

    new-instance v2, Lcom/google/android/location/places/bg;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/location/places/bg;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/location/k/b;)V

    return-object v2
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/location/places/e/b;
    .locals 5

    .prologue
    .line 236
    new-instance v2, Lcom/google/android/location/places/e/b;

    invoke-direct {v2}, Lcom/google/android/location/places/e/b;-><init>()V

    .line 237
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/location/places/e/a;

    iput-object v0, v2, Lcom/google/android/location/places/e/b;->a:[Lcom/google/android/location/places/e/a;

    .line 238
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 239
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/v;

    .line 240
    new-instance v3, Lcom/google/android/location/places/e/a;

    invoke-direct {v3}, Lcom/google/android/location/places/e/a;-><init>()V

    .line 241
    iget v4, v0, Lcom/google/android/location/places/v;->b:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/location/places/e/a;->a:Ljava/lang/Float;

    .line 242
    iget-object v0, v0, Lcom/google/android/location/places/v;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/location/places/e/a;->b:Ljava/lang/String;

    .line 243
    iget-object v0, v2, Lcom/google/android/location/places/e/b;->a:[Lcom/google/android/location/places/e/a;

    aput-object v3, v0, v1

    .line 238
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 245
    :cond_0
    return-object v2
.end method

.method private a([B)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/places/bg;->g:Lcom/google/android/location/f/a;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v2}, Lcom/google/android/location/f/a;->a(Ljava/io/DataInputStream;)Lcom/google/android/location/f/ai;

    move-result-object v2

    .line 190
    iget-object v0, v2, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    array-length v3, p1

    if-eq v0, v3, :cond_0

    .line 191
    const-string v0, "Places"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read all encrypted bytes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object v0, v2, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, [B

    new-instance v2, Lcom/google/android/location/places/e/b;

    invoke-direct {v2}, Lcom/google/android/location/places/e/b;-><init>()V

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/e/b;

    .line 196
    invoke-static {v0}, Lcom/google/android/location/places/bg;->b(Lcom/google/android/location/places/e/b;)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v2, "Places"

    const-string v3, "Error parsing cache data"

    invoke-static {v2, v3, v0}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 199
    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    const-string v2, "Places"

    const-string v3, "Error decrypting cache data"

    invoke-static {v2, v3, v0}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 202
    goto :goto_0
.end method

.method private a()V
    .locals 9

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/location/places/bg;->e:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v0

    .line 153
    iget-wide v2, p0, Lcom/google/android/location/places/bg;->i:J

    sget-wide v4, Lcom/google/android/location/places/bg;->c:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-wide v2, Lcom/google/android/location/places/bg;->b:J

    sub-long v2, v0, v2

    .line 157
    iget-object v4, p0, Lcom/google/android/location/places/bg;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "data"

    const-string v6, "insertion_time < ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 160
    const-string v3, "Places"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const-string v3, "Places"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cleaned Wifi cache rows: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/o/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    iput-wide v0, p0, Lcom/google/android/location/places/bg;->i:J

    goto :goto_0
.end method

.method private a(Lcom/google/android/location/places/e/b;)[B
    .locals 5

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 138
    iget-object v3, p0, Lcom/google/android/location/places/bg;->g:Lcom/google/android/location/f/a;

    invoke-static {p1}, Lcom/google/android/location/places/e/b;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/android/location/f/a;->a(Ljava/io/DataOutputStream;[B)V

    .line 139
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 140
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    const-string v2, "Places"

    const-string v3, "PlaceInferencesProto encryption failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Lcom/google/android/location/places/e/b;)Ljava/util/List;
    .locals 7

    .prologue
    .line 227
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/location/places/e/b;->a:[Lcom/google/android/location/places/e/a;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    iget-object v2, p0, Lcom/google/android/location/places/e/b;->a:[Lcom/google/android/location/places/e/a;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 229
    new-instance v5, Lcom/google/android/location/places/v;

    iget-object v6, v4, Lcom/google/android/location/places/e/a;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/location/places/e/a;->a:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/google/android/location/places/v;-><init>(Ljava/lang/String;F)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/bh;)Ljava/util/List;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-direct {p0}, Lcom/google/android/location/places/bg;->a()V

    .line 169
    invoke-static {p1}, Lcom/google/android/location/places/bh;->a(Lcom/google/android/location/f/bh;)Lcom/google/android/location/places/bh;

    move-result-object v8

    .line 170
    invoke-static {v8}, Lcom/google/android/location/places/bg;->a(Lcom/google/android/location/places/bh;)J

    move-result-wide v6

    .line 172
    iget-object v0, p0, Lcom/google/android/location/places/bg;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "data"

    sget-object v2, Lcom/google/android/location/places/bg;->a:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_hash_key = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No sql cache entry for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return-object v4

    .line 181
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 183
    invoke-direct {p0, v1}, Lcom/google/android/location/places/bg;->a([B)Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/f/bh;Ljava/util/List;)V
    .locals 9

    .prologue
    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    invoke-static {p1}, Lcom/google/android/location/places/bh;->a(Lcom/google/android/location/f/bh;)Lcom/google/android/location/places/bh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/location/places/bg;->a(Lcom/google/android/location/places/bh;)J

    move-result-wide v2

    .line 108
    const-string v1, "_hash_key"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    invoke-static {p2}, Lcom/google/android/location/places/bg;->a(Ljava/util/List;)Lcom/google/android/location/places/e/b;

    move-result-object v1

    .line 111
    iget-object v4, p0, Lcom/google/android/location/places/bg;->e:Lcom/google/android/location/k/b;

    invoke-interface {v4}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v4

    sget-wide v6, Lcom/google/android/location/places/bg;->d:J

    div-long/2addr v4, v6

    sget-wide v6, Lcom/google/android/location/places/bg;->d:J

    mul-long/2addr v4, v6

    .line 112
    const-string v6, "Places"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    const-string v6, "Places"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Inserting: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/google/android/location/places/e/b;->a:[Lcom/google/android/location/places/e/a;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/android/location/o/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/location/places/bg;->a(Lcom/google/android/location/places/e/b;)[B

    move-result-object v1

    .line 118
    if-nez v1, :cond_1

    .line 119
    const-string v0, "Places"

    const-string v1, "PlaceInferencesProto encryption failed. Skipping cache."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    invoke-direct {p0}, Lcom/google/android/location/places/bg;->a()V

    .line 126
    return-void

    .line 121
    :cond_1
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 122
    const-string v1, "insertion_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    iget-object v1, p0, Lcom/google/android/location/places/bg;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method
