.class public final Lcom/google/android/gms/fitness/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/b;


# instance fields
.field final a:Lcom/google/android/gms/fitness/data/Application;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/Application;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/a/a;->a:Lcom/google/android/gms/fitness/data/Application;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/a;->a:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/a;->a:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Application;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
