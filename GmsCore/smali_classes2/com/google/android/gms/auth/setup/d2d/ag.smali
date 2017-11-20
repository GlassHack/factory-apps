.class final Lcom/google/android/gms/auth/setup/d2d/ag;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/setup/d2d/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/setup/d2d/ac;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/ag;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/ag;->a:Lcom/google/android/gms/auth/setup/d2d/ac;

    invoke-static {v0}, Lcom/google/android/gms/auth/setup/d2d/ac;->i(Lcom/google/android/gms/auth/setup/d2d/ac;)Lcom/google/c/j/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/j/a/w;->run()V

    const/4 v0, 0x0

    return-object v0
.end method
