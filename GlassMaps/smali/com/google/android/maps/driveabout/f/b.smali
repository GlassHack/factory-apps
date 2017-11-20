.class public final Lcom/google/android/maps/driveabout/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/google/android/maps/driveabout/store/bv;

.field private c:Lcom/google/android/maps/driveabout/store/al;

.field private d:Lcom/google/android/maps/driveabout/model/am;

.field private e:Lcom/google/android/maps/driveabout/model/aw;

.field private f:Lcom/google/android/maps/driveabout/model/aw;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/store/bv;Z)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/b;->b:Lcom/google/android/maps/driveabout/store/bv;

    .line 88
    new-instance v0, Lcom/google/android/maps/driveabout/store/al;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/al;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/b;->c:Lcom/google/android/maps/driveabout/store/al;

    .line 89
    sput-boolean p2, Lcom/google/android/maps/driveabout/f/b;->a:Z

    .line 90
    return-void
.end method

.method private a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 204
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 206
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 207
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/aw;

    .line 208
    iget-object v3, p0, Lcom/google/android/maps/driveabout/f/b;->c:Lcom/google/android/maps/driveabout/store/al;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/store/al;->c(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v3

    .line 209
    if-nez v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/google/android/maps/driveabout/f/b;->b:Lcom/google/android/maps/driveabout/store/bv;

    const/4 v5, 0x1

    invoke-interface {v3, v0, v5}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/android/maps/driveabout/model/aw;Z)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v3

    .line 212
    if-eqz v3, :cond_0

    .line 213
    iget-object v5, p0, Lcom/google/android/maps/driveabout/f/b;->c:Lcom/google/android/maps/driveabout/store/al;

    invoke-virtual {v5, v0, v3}, Lcom/google/android/maps/driveabout/store/al;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;)V

    .line 216
    :cond_0
    if-eqz v3, :cond_1

    .line 217
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 220
    add-int/lit8 v2, v2, -0x1

    .line 206
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 222
    :cond_1
    const-string v3, "RoadGraph"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "GetTiles: couldn\'t load tile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_2
    if-nez p2, :cond_5

    .line 227
    new-instance v1, Lcom/google/android/maps/driveabout/store/c;

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/store/c;-><init>(I)V

    .line 229
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/aw;

    .line 230
    if-eqz v0, :cond_3

    .line 231
    iget-object v3, p0, Lcom/google/android/maps/driveabout/f/b;->b:Lcom/google/android/maps/driveabout/store/bv;

    invoke-interface {v3, v0, v1}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;)V

    goto :goto_2

    .line 235
    :cond_4
    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/store/c;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/av;

    .line 240
    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/b;->c:Lcom/google/android/maps/driveabout/store/al;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/model/av;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/store/al;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/av;)V

    .line 241
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 237
    :catch_0
    move-exception v0

    const-string v0, "RoadGraph"

    const-string v2, "Interupted while waiting for tiles"

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 244
    :cond_5
    return-object v4
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/f/e;)Lcom/google/android/maps/driveabout/f/e;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x2

    .line 160
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/f/e;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 161
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    .line 165
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v6

    if-le v0, v6, :cond_2

    move v0, v1

    .line 166
    :goto_0
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v4

    if-le v6, v4, :cond_3

    .line 167
    :goto_1
    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 168
    invoke-virtual {v5, v2}, Lcom/google/android/maps/driveabout/model/ab;->e(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/bh;->a(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v0

    .line 169
    const/16 v1, 0xe

    .line 170
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/aw;->a(Lcom/google/android/maps/driveabout/model/bh;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/f/b;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/av;

    .line 173
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/model/av;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v4

    .line 174
    iget-object v5, p0, Lcom/google/android/maps/driveabout/f/b;->f:Lcom/google/android/maps/driveabout/model/aw;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/f/b;->e:Lcom/google/android/maps/driveabout/model/aw;

    if-eqz v5, :cond_4

    .line 175
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/f/b;->f:Lcom/google/android/maps/driveabout/model/aw;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 176
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/f/b;->e:Lcom/google/android/maps/driveabout/model/aw;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 177
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/f/b;->f:Lcom/google/android/maps/driveabout/model/aw;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 178
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/f/b;->e:Lcom/google/android/maps/driveabout/model/aw;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 180
    :cond_1
    const-string v0, "RoadGraph"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x31

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Requested tile outside of marked available area: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 189
    :goto_2
    return-object v0

    :cond_2
    move v0, v2

    .line 165
    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 166
    goto/16 :goto_1

    .line 185
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 186
    check-cast v0, Lcom/google/android/maps/driveabout/f/d;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/f/d;->a(Lcom/google/android/maps/driveabout/f/e;)Lcom/google/android/maps/driveabout/f/e;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v3

    .line 189
    goto :goto_2
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;D)Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    double-to-int v0, p2

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/ab;I)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    .line 130
    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/b;->d:Lcom/google/android/maps/driveabout/model/am;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/b;->d:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/model/am;->b(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    .line 135
    :cond_0
    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/bh;->a(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v0

    const/16 v2, 0xe

    .line 134
    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/model/aw;->a(Lcom/google/android/maps/driveabout/model/bh;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    sget-boolean v2, Lcom/google/android/maps/driveabout/f/b;->a:Z

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/f/b;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/av;

    .line 138
    check-cast v0, Lcom/google/android/maps/driveabout/f/d;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/f/c;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/f/c;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/am;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0xe

    .line 100
    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/b;->d:Lcom/google/android/maps/driveabout/model/am;

    .line 101
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/b;->d:Lcom/google/android/maps/driveabout/model/am;

    if-nez v0, :cond_0

    .line 102
    iput-object v1, p0, Lcom/google/android/maps/driveabout/f/b;->f:Lcom/google/android/maps/driveabout/model/aw;

    .line 103
    iput-object v1, p0, Lcom/google/android/maps/driveabout/f/b;->e:Lcom/google/android/maps/driveabout/model/aw;

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->e()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    .line 105
    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/model/aw;->a(III)Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/b;->e:Lcom/google/android/maps/driveabout/model/aw;

    .line 108
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->e()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 107
    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/model/aw;->a(III)Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/b;->f:Lcom/google/android/maps/driveabout/model/aw;

    goto :goto_0
.end method
