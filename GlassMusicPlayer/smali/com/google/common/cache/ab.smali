.class final Lcom/google/common/cache/ab;
.super Lcom/google/common/cache/ad;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/y;


# instance fields
.field volatile a:J

.field b:Lcom/google/common/cache/y;

.field c:Lcom/google/common/cache/y;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/y;)V
    .locals 2

    .prologue
    .line 1119
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/ad;-><init>(Ljava/lang/Object;ILcom/google/common/cache/y;)V

    .line 1124
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/ab;->a:J

    .line 1136
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ab;->b:Lcom/google/common/cache/y;

    .line 1149
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ab;->c:Lcom/google/common/cache/y;

    .line 1120
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .locals 2

    .prologue
    .line 1128
    iget-wide v0, p0, Lcom/google/common/cache/ab;->a:J

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/google/common/cache/ab;->b:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/google/common/cache/ab;->c:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final setAccessTime(J)V
    .locals 0

    .prologue
    .line 1133
    iput-wide p1, p0, Lcom/google/common/cache/ab;->a:J

    .line 1134
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/google/common/cache/ab;->b:Lcom/google/common/cache/y;

    .line 1147
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/google/common/cache/ab;->c:Lcom/google/common/cache/y;

    .line 1160
    return-void
.end method
