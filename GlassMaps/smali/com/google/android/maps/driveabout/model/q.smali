.class public final Lcom/google/android/maps/driveabout/model/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/google/android/maps/driveabout/model/r;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/model/p;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/q;->a:Ljava/util/List;

    .line 60
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/q;->b:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/q;->c:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/google/android/maps/driveabout/model/q;->d:I

    .line 63
    new-instance v0, Lcom/google/android/maps/driveabout/model/r;

    invoke-direct {v0, p1, p6}, Lcom/google/android/maps/driveabout/model/r;-><init>(Lcom/google/android/maps/driveabout/model/p;I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/q;->e:Lcom/google/android/maps/driveabout/model/r;

    .line 64
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/model/q;
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 73
    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/p;

    move-result-object v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    const-string v1, "INAKA"

    const-string v2, "malformed id: "

    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .line 114
    :goto_1
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0, v10}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v4

    .line 81
    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    move v3, v5

    .line 82
    :goto_2
    if-ge v3, v4, :cond_4

    .line 84
    invoke-virtual {p0, v10, v3}, Lcom/google/googlenav/common/io/b/a;->f(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/p;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 88
    :cond_2
    const-string v6, "INAKA"

    const-string v7, "warning: malformed building id: "

    .line 89
    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_4
    invoke-static {v6, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 89
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 93
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    if-nez v3, :cond_5

    .line 96
    if-eqz v4, :cond_9

    move-object v0, v4

    :goto_5
    move-object v3, v0

    .line 98
    :cond_5
    if-nez v4, :cond_6

    move-object v4, v3

    .line 105
    :cond_6
    invoke-virtual {p0, v11}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {p0, v11}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v5

    .line 109
    :cond_7
    const/high16 v6, -0x80000000

    .line 110
    invoke-virtual {p0, v12}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    invoke-virtual {p0, v12}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v6

    .line 114
    :cond_8
    new-instance v0, Lcom/google/android/maps/driveabout/model/q;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/model/q;-><init>(Lcom/google/android/maps/driveabout/model/p;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 96
    :cond_9
    const-string v0, ""

    goto :goto_5
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/r;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/q;->e:Lcom/google/android/maps/driveabout/model/r;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/p;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/q;->e:Lcom/google/android/maps/driveabout/model/r;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/r;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/q;->a:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/q;->e:Lcom/google/android/maps/driveabout/model/r;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
