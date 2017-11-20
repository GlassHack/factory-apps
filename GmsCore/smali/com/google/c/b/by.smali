.class public final Lcom/google/c/b/by;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/c/a/dc;

.field private static b:Lcom/google/c/a/df;

.field private static final c:Ljava/util/logging/Logger;


# instance fields
.field private d:Z

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:Lcom/google/c/b/du;

.field private j:J

.field private k:J

.field private l:J

.field private m:Lcom/google/c/a/dc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/c/b/bz;

    invoke-direct {v0}, Lcom/google/c/b/bz;-><init>()V

    new-instance v1, Lcom/google/c/a/de;

    invoke-direct {v1, v0}, Lcom/google/c/a/de;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/google/c/b/by;->a:Lcom/google/c/a/dc;

    new-instance v0, Lcom/google/c/b/cg;

    invoke-direct {v0}, Lcom/google/c/b/cg;-><init>()V

    new-instance v0, Lcom/google/c/b/ca;

    invoke-direct {v0}, Lcom/google/c/b/ca;-><init>()V

    new-instance v0, Lcom/google/c/b/cb;

    invoke-direct {v0}, Lcom/google/c/b/cb;-><init>()V

    sput-object v0, Lcom/google/c/b/by;->b:Lcom/google/c/a/df;

    const-class v0, Lcom/google/c/b/by;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/c/b/by;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/b/by;->d:Z

    iput v1, p0, Lcom/google/c/b/by;->e:I

    iput v1, p0, Lcom/google/c/b/by;->f:I

    iput-wide v2, p0, Lcom/google/c/b/by;->g:J

    iput-wide v2, p0, Lcom/google/c/b/by;->h:J

    iput-wide v2, p0, Lcom/google/c/b/by;->j:J

    iput-wide v2, p0, Lcom/google/c/b/by;->k:J

    iput-wide v2, p0, Lcom/google/c/b/by;->l:J

    sget-object v0, Lcom/google/c/b/by;->a:Lcom/google/c/a/dc;

    iput-object v0, p0, Lcom/google/c/b/by;->m:Lcom/google/c/a/dc;

    return-void
.end method

.method static a(Z)Lcom/google/c/a/df;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/c/a/df;->b()Lcom/google/c/a/df;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/c/b/by;->b:Lcom/google/c/a/df;

    goto :goto_0
.end method

.method public static a()Lcom/google/c/b/by;
    .locals 1

    new-instance v0, Lcom/google/c/b/by;

    invoke-direct {v0}, Lcom/google/c/b/by;-><init>()V

    return-object v0
.end method

.method static c()Lcom/google/c/a/bw;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/c/b/by;->j()Lcom/google/c/b/du;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/c/b/du;->a()Lcom/google/c/a/bw;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/bw;

    return-object v0
.end method

.method static g()Lcom/google/c/b/fb;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/c/b/cd;->a:Lcom/google/c/b/cd;

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/fb;

    return-object v0
.end method

.method static j()Lcom/google/c/b/du;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/c/b/du;->a:Lcom/google/c/b/du;

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/du;

    return-object v0
.end method

.method static n()Lcom/google/c/b/et;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/c/b/cc;->a:Lcom/google/c/b/cc;

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/et;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/c/b/ce;)Lcom/google/c/a/bz;
    .locals 4

    iget-wide v0, p0, Lcom/google/c/b/by;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "maximumWeight requires weigher"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/c/b/dn;

    invoke-direct {v0, p0, p1}, Lcom/google/c/b/dn;-><init>(Lcom/google/c/b/by;Lcom/google/c/b/ce;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Lcom/google/c/a/bw;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/c/b/by;->i()Lcom/google/c/b/du;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/c/b/du;->a()Lcom/google/c/a/bw;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/bw;

    return-object v0
.end method

.method final d()I
    .locals 2

    iget v0, p0, Lcom/google/c/b/by;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/c/b/by;->e:I

    goto :goto_0
.end method

.method final e()I
    .locals 2

    iget v0, p0, Lcom/google/c/b/by;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/c/b/by;->f:I

    goto :goto_0
.end method

.method final f()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/c/b/by;->j:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/c/b/by;->k:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/google/c/b/by;->g:J

    goto :goto_0
.end method

.method public final h()Lcom/google/c/b/by;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/c/b/du;->b:Lcom/google/c/b/du;

    iget-object v0, p0, Lcom/google/c/b/by;->i:Lcom/google/c/b/du;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Key strength was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/c/b/by;->i:Lcom/google/c/b/du;

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/du;

    iput-object v0, p0, Lcom/google/c/b/by;->i:Lcom/google/c/b/du;

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method final i()Lcom/google/c/b/du;
    .locals 2

    iget-object v0, p0, Lcom/google/c/b/by;->i:Lcom/google/c/b/du;

    sget-object v1, Lcom/google/c/b/du;->a:Lcom/google/c/b/du;

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/du;

    return-object v0
.end method

.method final k()J
    .locals 4

    iget-wide v0, p0, Lcom/google/c/b/by;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/c/b/by;->j:J

    goto :goto_0
.end method

.method final l()J
    .locals 4

    iget-wide v0, p0, Lcom/google/c/b/by;->k:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/c/b/by;->k:J

    goto :goto_0
.end method

.method final m()J
    .locals 4

    iget-wide v0, p0, Lcom/google/c/b/by;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/c/b/by;->l:J

    goto :goto_0
.end method

.method final o()Lcom/google/c/a/dc;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/by;->m:Lcom/google/c/a/dc;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    const/4 v3, -0x1

    const-wide/16 v6, -0x1

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    iget v1, p0, Lcom/google/c/b/by;->e:I

    if-eq v1, v3, :cond_0

    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/c/b/by;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    :cond_0
    iget v1, p0, Lcom/google/c/b/by;->f:I

    if-eq v1, v3, :cond_1

    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/c/b/by;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    :cond_1
    iget-wide v2, p0, Lcom/google/c/b/by;->g:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    const-string v1, "maximumSize"

    iget-wide v2, p0, Lcom/google/c/b/by;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/cf;->a(Ljava/lang/String;J)Lcom/google/c/a/cf;

    :cond_2
    iget-wide v2, p0, Lcom/google/c/b/by;->h:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    const-string v1, "maximumWeight"

    iget-wide v2, p0, Lcom/google/c/b/by;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/cf;->a(Ljava/lang/String;J)Lcom/google/c/a/cf;

    :cond_3
    iget-wide v2, p0, Lcom/google/c/b/by;->j:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/c/b/by;->j:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    :cond_4
    iget-wide v2, p0, Lcom/google/c/b/by;->k:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_5

    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/c/b/by;->k:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    :cond_5
    iget-object v1, p0, Lcom/google/c/b/by;->i:Lcom/google/c/b/du;

    if-eqz v1, :cond_6

    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/c/b/by;->i:Lcom/google/c/b/du;

    invoke-virtual {v2}, Lcom/google/c/b/du;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/c/a/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    :cond_6
    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
