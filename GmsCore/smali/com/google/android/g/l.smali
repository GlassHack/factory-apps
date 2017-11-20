.class public Lcom/google/android/g/l;
.super Lcom/android/d/a/g;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/g/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/g/f;

    const-string v1, "unused/0"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/g/f;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/g/l;-><init>(Lcom/google/android/g/f;Z)V

    .line 25
    return-void
.end method

.method private constructor <init>(Lcom/google/android/g/f;Z)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/d/a/g;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 29
    iput-object p1, p0, Lcom/google/android/g/l;->b:Lcom/google/android/g/f;

    .line 30
    if-eqz p2, :cond_0

    .line 31
    sget-object v0, Lcom/android/d/ab;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/g/f;->a(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method
