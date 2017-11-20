.class public Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bb;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

.field o:Ljava/util/List;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Z

.field s:Z

.field t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/bb;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/bb;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/bb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->o:Ljava/util/List;

    .line 130
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a:I

    .line 106
    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->d:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->e:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->f:Ljava/lang/String;

    .line 111
    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->g:Ljava/lang/String;

    .line 112
    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->h:Ljava/lang/String;

    .line 113
    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->i:Ljava/lang/String;

    .line 114
    iput-boolean p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->j:Z

    .line 115
    iput-boolean p11, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->k:Z

    .line 116
    iput-boolean p12, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->l:Z

    .line 117
    iput-boolean p13, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->m:Z

    .line 118
    iput-object p14, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->n:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    .line 119
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->o:Ljava/util/List;

    .line 120
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->p:Ljava/lang/String;

    .line 121
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->q:Ljava/lang/String;

    .line 122
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->r:Z

    .line 123
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->s:Z

    .line 124
    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->t:I

    .line 125
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 326
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->t:I

    .line 327
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->n:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    .line 277
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    .prologue
    .line 162
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->m:Z

    .line 268
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->d:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->s:Z

    .line 309
    return-object p0
.end method

.method public final b()Lcom/google/android/gms/auth/firstparty/shared/k;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->e:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public final c(Z)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->j:Z

    .line 338
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->f:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->g:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->h:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->i:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->p:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->q:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->k:Z

    return v0
.end method

.method public final l()Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->k:Z

    .line 250
    return-object p0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->l:Z

    return v0
.end method

.method public final n()Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->l:Z

    .line 259
    return-object p0
.end method

.method public final o()Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->n:Lcom/google/android/gms/auth/firstparty/shared/CaptchaChallenge;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->o:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->s:Z

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->t:I

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->j:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->r:Z

    return v0
.end method

.method public final u()Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->r:Z

    .line 351
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 137
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/bb;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Landroid/os/Parcel;I)V

    .line 138
    return-void
.end method
