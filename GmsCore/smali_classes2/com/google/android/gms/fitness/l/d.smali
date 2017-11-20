.class public final Lcom/google/android/gms/fitness/l/d;
.super Lcom/google/android/gms/fitness/l/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/app/PendingIntent;

.field final synthetic b:Lcom/google/android/gms/fitness/l/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/l/b;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/google/android/gms/fitness/l/e;Lcom/google/android/gms/fitness/internal/a;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/gms/fitness/l/d;->b:Lcom/google/android/gms/fitness/l/b;

    iput-object p6, p0, Lcom/google/android/gms/fitness/l/d;->a:Landroid/app/PendingIntent;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/fitness/l/f;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/google/android/gms/fitness/l/e;Lcom/google/android/gms/fitness/internal/a;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/d;->b:Lcom/google/android/gms/fitness/l/b;

    iget-object v0, v0, Lcom/google/android/gms/fitness/l/b;->c:Lcom/google/android/gms/fitness/l/g;

    iget-object v1, p0, Lcom/google/android/gms/fitness/l/d;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/fitness/l/g;->b(Ljava/lang/Object;Lcom/google/android/gms/fitness/data/o;)V

    .line 94
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/fitness/l/d;->b:Lcom/google/android/gms/fitness/l/b;

    iget-object v0, v0, Lcom/google/android/gms/fitness/l/b;->c:Lcom/google/android/gms/fitness/l/g;

    iget-object v1, p0, Lcom/google/android/gms/fitness/l/d;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/l/g;->b(Ljava/lang/Object;)V

    .line 99
    return-void
.end method
