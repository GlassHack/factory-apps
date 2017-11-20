.class public final Lcom/google/android/gms/common/j;
.super Lcom/google/android/gms/common/m;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/m;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 25
    iput p1, p0, Lcom/google/android/gms/common/j;->a:I

    .line 26
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/gms/common/j;->a:I

    return v0
.end method
