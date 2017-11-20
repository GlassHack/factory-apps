.class final Lcom/google/android/gms/auth/setup/d2d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/c/j/a/ad;

.field final synthetic b:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/SourceActivity;Lcom/google/c/j/a/ad;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/h;->b:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    iput-object p2, p0, Lcom/google/android/gms/auth/setup/d2d/h;->a:Lcom/google/c/j/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/h;->a:Lcom/google/c/j/a/ad;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/h;->b:Lcom/google/android/gms/auth/setup/d2d/SourceActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/SourceActivity;->finish()V

    .line 305
    return-void
.end method
