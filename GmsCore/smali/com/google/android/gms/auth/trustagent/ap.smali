.class public final Lcom/google/android/gms/auth/trustagent/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/auth/trustagent/ap;->a:I

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    sget v0, Lcom/google/android/gms/auth/trustagent/ap;->a:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 35
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/google/android/gms/auth/trustagent/ap;->a:I

    .line 41
    :goto_0
    const-string v0, "coffee_preferences"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sget v2, Lcom/google/android/gms/auth/trustagent/ap;->a:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current process ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not the original process accessing the prefs ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/google/android/gms/auth/trustagent/ap;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
