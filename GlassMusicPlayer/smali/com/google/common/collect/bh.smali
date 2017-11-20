.class public abstract Lcom/google/common/collect/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/collect/bh;

.field private static final b:Lcom/google/common/collect/bh;

.field private static final c:Lcom/google/common/collect/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/google/common/collect/bi;

    invoke-direct {v0}, Lcom/google/common/collect/bi;-><init>()V

    sput-object v0, Lcom/google/common/collect/bh;->a:Lcom/google/common/collect/bh;

    .line 120
    new-instance v0, Lcom/google/common/collect/bj;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/bj;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/bh;->b:Lcom/google/common/collect/bh;

    .line 122
    new-instance v0, Lcom/google/common/collect/bj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/bj;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/bh;->c:Lcom/google/common/collect/bh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/bi;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/common/collect/bh;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/collect/bh;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/common/collect/bh;->a:Lcom/google/common/collect/bh;

    return-object v0
.end method

.method static synthetic c()Lcom/google/common/collect/bh;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/common/collect/bh;->b:Lcom/google/common/collect/bh;

    return-object v0
.end method

.method static synthetic d()Lcom/google/common/collect/bh;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/common/collect/bh;->c:Lcom/google/common/collect/bh;

    return-object v0
.end method

.method static synthetic e()Lcom/google/common/collect/bh;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/common/collect/bh;->a:Lcom/google/common/collect/bh;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/bh;
.end method

.method public abstract b()I
.end method
