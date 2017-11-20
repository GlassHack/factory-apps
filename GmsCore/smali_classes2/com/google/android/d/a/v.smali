.class final Lcom/google/android/d/a/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/d/a/w;

    invoke-direct {v0}, Lcom/google/android/d/a/w;-><init>()V

    sput-object v0, Lcom/google/android/d/a/v;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/d/a/d;->b()Lcom/google/android/d/a/d;

    move-result-object v0

    return-object v0
.end method
