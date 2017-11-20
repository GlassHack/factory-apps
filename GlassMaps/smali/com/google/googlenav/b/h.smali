.class public final Lcom/google/googlenav/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/b/h;->a:I

    .line 34
    const/4 v0, 0x2

    .line 35
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/b/h;->b:Z

    .line 36
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/b/h;->c:I

    .line 37
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/b/h;->d:I

    .line 38
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/b/h;->e:I

    .line 40
    return-void
.end method

.method public static a()Lcom/google/googlenav/common/io/b/a;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/e;->t:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    return-object v0
.end method


# virtual methods
.method public final b()J
    .locals 4

    .prologue
    .line 74
    iget v0, p0, Lcom/google/googlenav/b/h;->d:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 24
    iget v0, p0, Lcom/google/googlenav/b/h;->a:I

    iget-boolean v1, p0, Lcom/google/googlenav/b/h;->b:Z

    iget v2, p0, Lcom/google/googlenav/b/h;->c:I

    iget v3, p0, Lcom/google/googlenav/b/h;->d:I

    iget v4, p0, Lcom/google/googlenav/b/h;->e:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0xb4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "personalizedSmartMapsTileDuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " onlyRequestPsmWhenPoiInBaseTile: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minPsmRequestZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pertileDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pertileClientCoverage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
