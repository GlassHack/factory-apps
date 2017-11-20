.class public final Lcom/google/android/a/f;
.super Lcom/google/android/a/d;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/a/g;Lcom/google/android/a/h;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/a/d;-><init>(Landroid/content/Context;Lcom/google/android/a/g;Lcom/google/android/a/h;)V

    .line 73
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/a/f;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    .line 63
    invoke-static {p0, p1, v0}, Lcom/google/android/a/f;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/a/g;)V

    .line 65
    new-instance v1, Lcom/google/android/a/f;

    new-instance v2, Lcom/google/android/a/k;

    invoke-direct {v2}, Lcom/google/android/a/k;-><init>()V

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/a/f;-><init>(Landroid/content/Context;Lcom/google/android/a/g;Lcom/google/android/a/h;)V

    return-object v1
.end method
