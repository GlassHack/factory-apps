.class public Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/al;


# instance fields
.field final a:I

.field b:Landroid/os/Bundle;

.field c:Z

.field d:Z

.field e:Z

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Z

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field o:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

.field p:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/al;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/al;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->a:I

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->b:Landroid/os/Bundle;

    .line 106
    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->a:I

    .line 83
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->b:Landroid/os/Bundle;

    .line 84
    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->c:Z

    .line 85
    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->d:Z

    .line 86
    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->e:Z

    .line 87
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->f:Ljava/lang/String;

    .line 88
    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->g:Ljava/lang/String;

    .line 89
    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->h:Ljava/lang/String;

    .line 90
    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->i:Ljava/lang/String;

    .line 91
    iput-boolean p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->j:Z

    .line 92
    iput-boolean p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->k:Z

    .line 93
    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->l:Z

    .line 94
    iput-object p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->m:Ljava/lang/String;

    .line 95
    iput-object p14, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->n:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 96
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->o:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    .line 97
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->p:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .line 98
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->q:Ljava/lang/String;

    .line 99
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->r:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->e:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->c:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->j:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->k:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->l:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->n:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->o:Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;->p:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 113
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/al;->a(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountSetupRequest;Landroid/os/Parcel;I)V

    .line 114
    return-void
.end method
