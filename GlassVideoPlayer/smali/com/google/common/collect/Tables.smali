.class public final Lcom/google/common/collect/Tables;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/base/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 733
    new-instance v0, Lcom/google/common/collect/ny;

    invoke-direct {v0}, Lcom/google/common/collect/ny;-><init>()V

    sput-object v0, Lcom/google/common/collect/Tables;->a:Lcom/google/common/base/v;

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/v;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/google/common/collect/Tables;->b()Lcom/google/common/base/v;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/nx;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    new-instance v0, Lcom/google/common/collect/Tables$ImmutableCell;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/Tables$ImmutableCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static b()Lcom/google/common/base/v;
    .locals 1

    .prologue
    .line 730
    sget-object v0, Lcom/google/common/collect/Tables;->a:Lcom/google/common/base/v;

    return-object v0
.end method
