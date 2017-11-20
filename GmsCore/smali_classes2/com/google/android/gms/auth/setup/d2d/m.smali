.class final Lcom/google/android/gms/auth/setup/d2d/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/setup/d2d/f;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/m;->a:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput-object p2, p0, Lcom/google/android/gms/auth/setup/d2d/m;->b:Ljava/lang/String;

    .line 762
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/m;->a:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->e(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;)Lcom/google/android/gms/auth/setup/d2d/a/f;

    .line 774
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/m;->a:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/g;)Lcom/google/android/gms/auth/setup/d2d/g;

    .line 775
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/m;->a:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    .line 776
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/setup/d2d/b/g;)V
    .locals 3

    .prologue
    .line 765
    iget-object v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/m;->a:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iget-object v1, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->e:Lcom/google/android/gms/auth/setup/d2d/b/c;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/android/gms/auth/setup/d2d/b/c;)V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/m;->a:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iget-object v1, p1, Lcom/google/android/gms/auth/setup/d2d/b/g;->g:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->a(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
