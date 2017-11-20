.class public final Lcom/google/m/b/a/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/security/KeyPair;

.field public b:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {v1}, Lcom/google/m/b/a/d/i;->a(Z)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/d/h;->a:Ljava/security/KeyPair;

    .line 101
    iput-boolean v1, p0, Lcom/google/m/b/a/d/h;->b:Z

    .line 102
    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/m/b/a/d/h;-><init>()V

    return-void
.end method
