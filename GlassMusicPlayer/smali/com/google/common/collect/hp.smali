.class final Lcom/google/common/collect/hp;
.super Lcom/google/common/collect/hm;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hk;


# instance fields
.field volatile e:J

.field f:Lcom/google/common/collect/hk;

.field g:Lcom/google/common/collect/hk;

.field h:Lcom/google/common/collect/hk;

.field i:Lcom/google/common/collect/hk;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/hk;)V
    .locals 2

    .prologue
    .line 1056
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/hm;-><init>(Ljava/lang/Object;ILcom/google/common/collect/hk;)V

    .line 1061
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/hp;->e:J

    .line 1073
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hp;->f:Lcom/google/common/collect/hk;

    .line 1086
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hp;->g:Lcom/google/common/collect/hk;

    .line 1101
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hp;->h:Lcom/google/common/collect/hk;

    .line 1114
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hp;->i:Lcom/google/common/collect/hk;

    .line 1057
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 1065
    iget-wide v0, p0, Lcom/google/common/collect/hp;->e:J

    return-wide v0
.end method

.method public final getNextEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/google/common/collect/hp;->h:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/common/collect/hp;->f:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/google/common/collect/hp;->i:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/common/collect/hp;->g:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 0

    .prologue
    .line 1070
    iput-wide p1, p0, Lcom/google/common/collect/hp;->e:J

    .line 1071
    return-void
.end method

.method public final setNextEvictable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/google/common/collect/hp;->h:Lcom/google/common/collect/hk;

    .line 1112
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/google/common/collect/hp;->f:Lcom/google/common/collect/hk;

    .line 1084
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/google/common/collect/hp;->i:Lcom/google/common/collect/hk;

    .line 1125
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/google/common/collect/hp;->g:Lcom/google/common/collect/hk;

    .line 1097
    return-void
.end method
