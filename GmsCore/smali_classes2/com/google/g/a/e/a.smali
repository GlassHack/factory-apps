.class public final Lcom/google/g/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/g/a/e/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Z)V
    .locals 4

    .prologue
    .line 115
    if-nez p0, :cond_0

    const-string v1, "condition was false"

    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Assert common"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/google/g/a/e/b;

    invoke-direct {v0, v1}, Lcom/google/g/a/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    return-void
.end method
