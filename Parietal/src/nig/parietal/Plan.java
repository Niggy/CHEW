/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package nig.parietal;

/**
 *
 * @author nigel
 */
public class Plan {
    private String deficiency;
    private int emotion_id;
    private int direction;
    private int action_id;
    private String emotion;

    /**
     * @return the deficiency
     */
    public String getDeficiency() {
        return deficiency;
    }

    /**
     * @param deficiency the deficiency to set
     */
    public void setDeficiency(String deficiency) {
        this.deficiency = deficiency;
    }

    /**
     * @return the emotion_id
     */
    public int getEmotion_id() {
        return emotion_id;
    }

    /**
     * @param emotion_id the emotion_id to set
     */
    public void setEmotion_id(int emotion_id) {
        this.emotion_id = emotion_id;
    }

    /**
     * @return the direction
     */
    public int getDirection() {
        return direction;
    }

    /**
     * @param direction the direction to set
     */
    public void setDirection(int direction) {
        this.direction = direction;
    }

    /**
     * @return the action_id
     */
    public int getAction_id() {
        return action_id;
    }

    /**
     * @param action_id the action_id to set
     */
    public void setAction_id(int action_id) {
        this.action_id = action_id;
    }

    /**
     * @return the emotion
     */
    public String getEmotion() {
        return emotion;
    }

    /**
     * @param emotion the emotion to set
     */
    public void setEmotion(String emotion) {
        this.emotion = emotion;
    }

}
