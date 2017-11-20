.class final Lcom/google/googlenav/f/d;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/google/googlenav/f/c;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
