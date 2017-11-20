.class public Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/a;


# instance fields
.field final a:I

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a:I

    .line 43
    return-void
.end method

.method constructor <init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->a:I

    .line 67
    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b:Z

    .line 68
    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->d:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->e:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->f:Ljava/lang/String;

    .line 72
    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->g:Ljava/lang/String;

    .line 73
    iput-object p8, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->h:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b:Z

    .line 148
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->e:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->f:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->d:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->g:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;->b:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/shared/a;->a(Lcom/google/android/gms/auth/firstparty/shared/AccountCredentials;Landroid/os/Parcel;)V

    .line 82
    return-void
.end method
