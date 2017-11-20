.class public abstract Lcom/google/common/base/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/base/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/common/base/ay;

    invoke-direct {v0}, Lcom/google/common/base/ay;-><init>()V

    sput-object v0, Lcom/google/common/base/ax;->a:Lcom/google/common/base/ax;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/common/base/ax;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/common/base/ax;->a:Lcom/google/common/base/ax;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
