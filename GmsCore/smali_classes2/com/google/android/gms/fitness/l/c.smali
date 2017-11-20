.class public final Lcom/google/android/gms/fitness/l/c;
.super Lcom/google/android/gms/fitness/l/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/l/a;

.field final synthetic b:Lcom/google/android/gms/fitness/l/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/l/b;Landroid/content/Context;Lcom/google/android/gms/fitness/l/a;Lcom/google/android/gms/fitness/l/e;Lcom/google/android/gms/fitness/internal/a;Lcom/google/android/gms/fitness/l/a;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/gms/fitness/l/c;->b:Lcom/google/android/gms/fitness/l/b;

    iput-object p6, p0, Lcom/google/android/gms/fitness/l/c;->a:Lcom/google/android/gms/fitness/l/a;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/fitness/l/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/fitness/l/a;Lcom/google/android/gms/fitness/l/e;Lcom/google/android/gms/fitness/internal/a;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/c;->b:Lcom/google/android/gms/fitness/l/b;

    iget-object v0, v0, Lcom/google/android/gms/fitness/l/b;->b:Lcom/google/android/gms/fitness/l/g;

    iget-object v1, p0, Lcom/google/android/gms/fitness/l/c;->a:Lcom/google/android/gms/fitness/l/a;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/fitness/l/g;->b(Ljava/lang/Object;Lcom/google/android/gms/fitness/data/o;)V

    .line 75
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/c;->b:Lcom/google/android/gms/fitness/l/b;

    iget-object v0, v0, Lcom/google/android/gms/fitness/l/b;->b:Lcom/google/android/gms/fitness/l/g;

    iget-object v1, p0, Lcom/google/android/gms/fitness/l/c;->a:Lcom/google/android/gms/fitness/l/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/l/g;->b(Ljava/lang/Object;)V

    .line 80
    return-void
.end method
