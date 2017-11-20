.class public final Lcom/google/android/gms/auth/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/auth/a/h;

.field public static final b:Lcom/google/android/gms/auth/a/h;

.field public static final c:Lcom/google/android/gms/auth/a/h;

.field public static final d:Lcom/google/android/gms/auth/a/h;


# instance fields
.field public final e:Lcom/google/android/gms/auth/firstparty/shared/k;

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->b:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/h;->a:Lcom/google/android/gms/auth/a/h;

    .line 21
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/h;->b:Lcom/google/android/gms/auth/a/h;

    .line 22
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->m:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/h;->c:Lcom/google/android/gms/auth/a/h;

    .line 23
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->n:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/h;->d:Lcom/google/android/gms/auth/a/h;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/firstparty/shared/k;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/gms/auth/a/h;->e:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 78
    iput p2, p0, Lcom/google/android/gms/auth/a/h;->f:I

    .line 79
    return-void
.end method

.method public static a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/gms/auth/a/i;->a:[I

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gms.StatusHelper No resource configured for status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    new-instance v1, Lcom/google/android/gms/auth/a/h;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/auth/a/h;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;I)V

    return-object v1

    .line 29
    :pswitch_0
    const v0, 0x7f10012f

    .line 30
    goto :goto_0

    .line 32
    :pswitch_1
    const v0, 0x7f100092

    .line 33
    goto :goto_0

    .line 35
    :pswitch_2
    const v0, 0x7f10008f

    .line 36
    goto :goto_0

    .line 38
    :pswitch_3
    const v0, 0x7f10008e

    .line 39
    goto :goto_0

    .line 41
    :pswitch_4
    const v0, 0x7f100090

    .line 42
    goto :goto_0

    .line 44
    :pswitch_5
    const v0, 0x7f10001d

    .line 45
    goto :goto_0

    .line 47
    :pswitch_6
    const v0, 0x7f100091

    .line 48
    goto :goto_0

    .line 50
    :pswitch_7
    const v0, 0x7f100093

    .line 51
    goto :goto_0

    .line 53
    :pswitch_8
    const v0, 0x7f100095

    .line 54
    goto :goto_0

    .line 56
    :pswitch_9
    const v0, 0x7f10008d

    .line 57
    goto :goto_0

    .line 59
    :pswitch_a
    const v0, 0x7f100096

    .line 60
    goto :goto_0

    .line 62
    :pswitch_b
    const v0, 0x7f10014f

    .line 63
    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/k;
    .locals 1

    .prologue
    .line 109
    if-nez p0, :cond_1

    .line 110
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->T:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    if-nez v0, :cond_2

    .line 114
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->f:Lcom/google/android/gms/auth/firstparty/shared/k;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;
    .locals 1

    .prologue
    .line 87
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->H:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 94
    :goto_0
    return-object v0

    .line 92
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->H:Lcom/google/android/gms/auth/firstparty/shared/k;

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/firstparty/shared/k;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/a/h;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;
    .locals 4

    .prologue
    .line 142
    if-nez p0, :cond_1

    .line 143
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/auth/firstparty/shared/k;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v0

    .line 146
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gms.StatusHelper Status from wire: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->f:Lcom/google/android/gms/auth/firstparty/shared/k;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->T:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/a/h;->e:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->T:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/a/h;->e:Lcom/google/android/gms/auth/firstparty/shared/k;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/shared/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    return-void
.end method
