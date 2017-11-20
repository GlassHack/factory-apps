.class final Lcom/google/android/gms/auth/trustagent/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/bh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/bh;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/bi;->a:Lcom/google/android/gms/auth/trustagent/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bi;->a:Lcom/google/android/gms/auth/trustagent/bh;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/bh;->a:Lcom/google/android/gms/auth/trustagent/bb;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bi;->a:Lcom/google/android/gms/auth/trustagent/bh;

    invoke-static {v1}, Lcom/google/android/gms/auth/trustagent/bh;->a(Lcom/google/android/gms/auth/trustagent/bh;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/trustagent/bb;->a(Lcom/google/android/gms/auth/trustagent/bb;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bi;->a:Lcom/google/android/gms/auth/trustagent/bh;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/bh;->a:Lcom/google/android/gms/auth/trustagent/bb;

    .line 230
    return-void
.end method
