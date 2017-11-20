.class public final Lcom/android/d/a;
.super Lcom/android/d/aa;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/d/aa;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/d/m;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/d/aa;-><init>(Lcom/android/d/m;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/d/a;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "User needs to (re)enter credentials."

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/d/aa;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
