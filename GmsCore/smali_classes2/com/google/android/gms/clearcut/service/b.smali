.class final Lcom/google/android/gms/clearcut/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/pseudonymous/a/a;


# instance fields
.field private a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/clearcut/service/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gms/clearcut/service/b;->a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    .locals 0

    .prologue
    .line 74
    iput-object p2, p0, Lcom/google/android/gms/clearcut/service/b;->a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    .line 75
    return-void
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method
