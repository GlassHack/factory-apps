.class final Lcom/google/android/gms/common/server/h;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/server/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/server/g;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/gms/common/server/h;->a:Lcom/google/android/gms/common/server/g;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    return-object v0
.end method
