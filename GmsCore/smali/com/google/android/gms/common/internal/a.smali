.class public abstract Lcom/google/android/gms/common/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/aa;


# instance fields
.field protected final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/common/internal/a;->b:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/x;I)V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ClearcutLogger service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UDC service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CloudSave service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FitnessService service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/common/internal/ak;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/ak;-><init>(Lcom/google/android/gms/common/internal/a;Landroid/content/Context;)V

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final d(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public d(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public e(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final e(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final f(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SearchQueries service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final g(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GlobalSearchAdmin service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final h(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SearchCorpora service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final i(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DeviceManager service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public j(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Common service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final k(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wallet service not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final l(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final m(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final n(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final o(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final p(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final q(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public r(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PseudonymousId service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reminder service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UsageReporting service not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
