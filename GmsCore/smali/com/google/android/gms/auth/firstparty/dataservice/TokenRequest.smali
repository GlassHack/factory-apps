.class public Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ba;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/os/Bundle;

.field volatile e:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field volatile f:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

.field volatile g:Z

.field volatile h:Z

.field i:Ljava/lang/String;

.field j:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field k:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

.field volatile l:Z

.field volatile m:Z

.field volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ba;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ba;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ba;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d:Landroid/os/Bundle;

    .line 60
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;->a:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/az;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->i:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a:I

    .line 86
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;ZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;ZZ)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d:Landroid/os/Bundle;

    .line 60
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;->a:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/az;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->i:Ljava/lang/String;

    .line 104
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a:I

    .line 105
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->c:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d:Landroid/os/Bundle;

    .line 108
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    .line 109
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    .line 110
    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->g:Z

    .line 111
    iput-boolean p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->h:Z

    .line 112
    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->i:Ljava/lang/String;

    .line 113
    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->j:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 114
    iput-object p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->k:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .line 115
    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->l:Z

    .line 116
    iput-boolean p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->m:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d:Landroid/os/Bundle;

    .line 60
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;->a:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/az;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->i:Ljava/lang/String;

    .line 122
    iput v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->a:I

    .line 123
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->c:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b:Ljava/lang/String;

    .line 126
    iput-boolean v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->n:Z

    .line 127
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 177
    :cond_0
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/az;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 1

    .prologue
    .line 253
    const-string v0, " Consent cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/az;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->i:Ljava/lang/String;

    .line 254
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->j:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 263
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->k:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    .line 272
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    .line 191
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    .line 182
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->c:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->g:Z

    .line 200
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 0

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->h:Z

    .line 209
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->d:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->f:Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->e:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->g:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->h:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->l:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->m:Z

    return v0
.end method

.method public final j()Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->m:Z

    .line 231
    return-object p0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->n:Z

    return v0
.end method

.method public final l()Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->n:Z

    .line 240
    return-object p0
.end method

.method public final m()Lcom/google/android/gms/auth/firstparty/dataservice/az;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/az;->valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/az;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->j:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;->k:Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 134
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ba;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;Landroid/os/Parcel;I)V

    .line 135
    return-void
.end method
