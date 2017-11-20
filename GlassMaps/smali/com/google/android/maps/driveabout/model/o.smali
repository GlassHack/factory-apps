.class public Lcom/google/android/maps/driveabout/model/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/p;

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:Lcom/google/android/maps/driveabout/store/a;

.field private e:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/model/p;Ljava/util/List;IZLcom/google/android/maps/driveabout/store/a;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/o;->a:Lcom/google/android/maps/driveabout/model/p;

    .line 56
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/o;->b:Ljava/util/List;

    .line 57
    iput p3, p0, Lcom/google/android/maps/driveabout/model/o;->c:I

    .line 58
    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/model/o;->e:Z

    .line 59
    iput-object p5, p0, Lcom/google/android/maps/driveabout/model/o;->d:Lcom/google/android/maps/driveabout/store/a;

    .line 60
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/a;)Lcom/google/android/maps/driveabout/model/o;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/p;

    move-result-object v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    const-string v1, "INAKA"

    const-string v2, "malformed building id: "

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

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

    .line 74
    const/4 v0, 0x0

    .line 99
    :goto_1
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v5

    .line 78
    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    move v3, v0

    .line 79
    :goto_2
    if-ge v3, v5, :cond_3

    .line 80
    invoke-virtual {p0, v6, v3}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 81
    invoke-static {v4}, Lcom/google/android/maps/driveabout/model/q;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/model/q;

    move-result-object v4

    .line 82
    if-eqz v4, :cond_2

    .line 83
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 87
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v4

    .line 89
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    .line 90
    if-ltz v3, :cond_4

    if-lt v3, v5, :cond_5

    :cond_4
    move v3, v0

    .line 95
    :cond_5
    if-nez v4, :cond_6

    if-nez v5, :cond_7

    .line 97
    :cond_6
    const/4 v3, -0x1

    .line 99
    :cond_7
    new-instance v0, Lcom/google/android/maps/driveabout/model/o;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/model/o;-><init>(Lcom/google/android/maps/driveabout/model/p;Ljava/util/List;IZLcom/google/android/maps/driveabout/store/a;)V

    goto :goto_1
.end method

.method private a(I)Lcom/google/android/maps/driveabout/model/q;
    .locals 1

    .prologue
    .line 197
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/o;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/q;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/p;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/o;->a:Lcom/google/android/maps/driveabout/model/p;

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/q;
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/q;

    .line 147
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/q;->b()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/model/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/r;)Lcom/google/android/maps/driveabout/model/q;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/r;->a()Lcom/google/android/maps/driveabout/model/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/model/o;->a(Lcom/google/android/maps/driveabout/model/p;)Lcom/google/android/maps/driveabout/model/q;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/o;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/model/q;
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/google/android/maps/driveabout/model/o;->c:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/model/o;->a(I)Lcom/google/android/maps/driveabout/model/q;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/o;->d:Lcom/google/android/maps/driveabout/store/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/a;->a()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/o;->a:Lcom/google/android/maps/driveabout/model/p;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[Building: "

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
