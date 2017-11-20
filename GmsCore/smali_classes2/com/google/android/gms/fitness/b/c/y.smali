.class public final Lcom/google/android/gms/fitness/b/c/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static b:Z

.field private static c:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "Fitness"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/b/c/y;->a:Ljava/util/logging/Logger;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/fitness/b/c/y;->b:Z

    .line 19
    new-instance v0, Lcom/google/android/gms/fitness/b/c/z;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/b/c/y;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/gms/fitness/b/c/y;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V
    .locals 4

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gms/fitness/b/c/y;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-boolean v0, Lcom/google/android/gms/fitness/b/c/y;->b:Z

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/google/android/gms/fitness/b/c/y;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sget-object v0, Lcom/google/android/gms/fitness/b/c/y;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method
