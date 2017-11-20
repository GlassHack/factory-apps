.class final Lcom/google/android/gms/config/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/config/ConfigFetchService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/config/ConfigFetchService;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/gms/config/e;->a:Lcom/google/android/gms/config/ConfigFetchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gms/config/e;->a:Lcom/google/android/gms/config/ConfigFetchService;

    invoke-static {v0}, Lcom/google/android/gms/config/ConfigFetchService;->a(Lcom/google/android/gms/config/ConfigFetchService;)V

    .line 183
    return-void
.end method
