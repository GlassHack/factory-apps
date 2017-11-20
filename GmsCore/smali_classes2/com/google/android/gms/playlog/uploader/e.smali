.class final Lcom/google/android/gms/playlog/uploader/e;
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
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/playlog/uploader/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/playlog/uploader/e;->a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    .locals 0

    .prologue
    .line 110
    iput-object p2, p0, Lcom/google/android/gms/playlog/uploader/e;->a:Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;

    .line 111
    return-void
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
