.class public final Lcom/google/android/maps/driveabout/store/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/b;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/util/g;

.field private final b:Lcom/google/android/maps/driveabout/util/g;

.field private c:Lcom/google/android/maps/driveabout/store/q;

.field private final d:Lcom/google/googlenav/common/a;

.field private e:Ljava/util/Locale;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/am;->f:I

    .line 85
    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    .line 86
    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    .line 87
    new-instance v0, Lcom/google/googlenav/common/a/a;

    invoke-direct {v0}, Lcom/google/googlenav/common/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->d:Lcom/google/googlenav/common/a;

    .line 88
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/am;->e:Ljava/util/Locale;

    .line 89
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/model/p;Z)Lcom/google/android/maps/driveabout/model/o;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/p;

    move-object p1, v0

    .line 138
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/o;

    .line 142
    if-eqz v0, :cond_2

    .line 143
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    :cond_1
    :goto_0
    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 145
    :cond_2
    monitor-exit v2

    .line 147
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v1

    .line 148
    goto :goto_0

    .line 145
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/store/t;

    move-result-object v0

    .line 152
    if-nez v0, :cond_5

    move-object v0, v1

    .line 153
    goto :goto_0

    .line 158
    :cond_5
    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/t;->a:Lcom/google/googlenav/common/io/b/a;

    .line 159
    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/p;

    move-result-object v2

    .line 160
    if-nez v2, :cond_7

    .line 161
    const-string v2, "BuildingCache"

    const-string v3, "malformed building id from cache: "

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/t;->a:Lcom/google/googlenav/common/io/b/a;

    .line 162
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_1
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 163
    goto :goto_0

    .line 162
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/model/p;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 166
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/store/t;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_a

    .line 168
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 169
    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/t;->a:Lcom/google/googlenav/common/io/b/a;

    .line 170
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/p;

    move-result-object v1

    .line 171
    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/model/p;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_8
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 177
    :try_start_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 184
    :cond_9
    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/t;->a:Lcom/google/googlenav/common/io/b/a;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/t;->b:Lcom/google/android/maps/driveabout/store/a;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/model/o;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/a;)Lcom/google/android/maps/driveabout/model/o;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/am;->b(Lcom/google/android/maps/driveabout/model/o;)V

    goto/16 :goto_0

    .line 178
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_a
    move-object v0, v1

    .line 180
    goto/16 :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/o;)Z
    .locals 1

    .prologue
    .line 314
    instance-of v0, p0, Lcom/google/android/maps/driveabout/store/ao;

    return v0
.end method

.method private b(Lcom/google/android/maps/driveabout/model/o;)V
    .locals 5

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/o;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 285
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    .line 286
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/o;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/q;

    .line 287
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/q;->b()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 284
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 289
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/model/p;Lcom/google/googlenav/common/io/b/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 214
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/b/a;)V

    .line 216
    invoke-virtual {p2, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    .line 217
    if-nez v1, :cond_1

    .line 237
    :cond_0
    return-void

    .line 226
    :cond_1
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/h/a/a/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 227
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/p;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 230
    invoke-virtual {p2, v6, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 231
    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/model/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/p;

    move-result-object v3

    .line 233
    if-eqz v3, :cond_2

    .line 234
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/b/a;)V

    .line 229
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/q;->a()I

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/store/am;->f:I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/o;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/model/p;Z)Lcom/google/android/maps/driveabout/model/o;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/p;Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/model/o;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 248
    const/4 v0, 0x1

    .line 249
    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/p;

    move-result-object v7

    .line 250
    if-eqz p1, :cond_0

    if-nez v7, :cond_1

    :cond_0
    move-object v0, v6

    .line 270
    :goto_0
    return-object v0

    .line 256
    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/store/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->d:Lcom/google/googlenav/common/a;

    .line 257
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/am;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/am;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/a;-><init>(Lcom/google/googlenav/common/a;IJLcom/google/android/maps/driveabout/store/b;)V

    .line 259
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    if-eqz v1, :cond_2

    .line 260
    invoke-direct {p0, v7, p2}, Lcom/google/android/maps/driveabout/store/am;->b(Lcom/google/android/maps/driveabout/model/p;Lcom/google/googlenav/common/io/b/a;)V

    .line 263
    :cond_2
    invoke-static {p2, v0}, Lcom/google/android/maps/driveabout/model/o;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/a;)Lcom/google/android/maps/driveabout/model/o;

    move-result-object v0

    .line 264
    if-nez v0, :cond_3

    move-object v0, v6

    .line 265
    goto :goto_0

    .line 268
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/am;->b(Lcom/google/android/maps/driveabout/model/o;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/maps/driveabout/store/q;

    new-instance v1, Lcom/google/googlenav/common/a/a;

    invoke-direct {v1}, Lcom/google/googlenav/common/a/a;-><init>()V

    const-string v2, "bd"

    sget-object v3, Lcom/google/h/a/a/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    const/16 v4, 0xbb8

    const-wide/32 v5, 0x5265c00

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/store/q;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Lcom/google/googlenav/common/io/b/d;IJ)V

    .line 102
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->e:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/q;->a(Ljava/util/Locale;)Z

    .line 104
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    .line 106
    :cond_0
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 203
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public final b(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/o;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/am;->a(Lcom/google/android/maps/driveabout/model/p;Z)Lcom/google/android/maps/driveabout/model/o;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->clear()V

    .line 396
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    .line 399
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->b:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->clear()V

    .line 400
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 402
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->c:Lcom/google/android/maps/driveabout/store/q;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/q;->c()V

    .line 405
    :cond_0
    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 400
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/google/android/maps/driveabout/model/p;)V
    .locals 6

    .prologue
    .line 298
    new-instance v0, Lcom/google/android/maps/driveabout/store/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/am;->d:Lcom/google/googlenav/common/a;

    .line 299
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/am;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/am;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/a;-><init>(Lcom/google/googlenav/common/a;IJLcom/google/android/maps/driveabout/store/b;)V

    .line 300
    new-instance v1, Lcom/google/android/maps/driveabout/store/ao;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/maps/driveabout/store/ao;-><init>(Lcom/google/android/maps/driveabout/model/p;Lcom/google/android/maps/driveabout/store/a;Lcom/google/android/maps/driveabout/store/an;)V

    .line 303
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/am;->a:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
