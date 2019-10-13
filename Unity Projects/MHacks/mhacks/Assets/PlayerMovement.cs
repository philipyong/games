using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerMovement : MonoBehaviour
{
    public GameObject myPrefab;
    public CharacterController2D controller;

    float horizontalMove = 0f;

    public float runSpeed = 40f;

    bool jump = false;
    bool crouch = false;
    bool switching = false;
    float posx = -6f;
    float posy = 2f;

    public static bool playerExists;

    int printed = 0;

    public int index = 0;
    public string levelName;
    // Start is called before the first frame update
    // Update is called once per frame

    void Update()
    {
        if (printed == 0)
        {
            GameObject.Find("Player").transform.position = new Vector3(posx, posy,0);
            printed++;
        }

            posx = GameObject.Find("Player").transform.position.x;
            posy = GameObject.Find("Player").transform.position.y;
            Debug.Log(posx + " " + posy);
            horizontalMove = Input.GetAxisRaw("Horizontal") * runSpeed;

            if (Input.GetButtonDown("Jump"))
            {
                jump = true;
            }

            if (Input.GetButtonDown("Crouch"))
            {
                crouch = true;
            }
            else if (Input.GetButtonUp("Crouch"))
            {
                crouch = false;
            }
            if (Input.GetButtonDown("Switch"))
            {
                if (switching == false)
                {
                    GameObject.Find("Player").transform.position = new Vector3(posx, posy,0);
                    DontDestroyOnLoad(transform.gameObject);
                    SceneManager.LoadScene(1);
                    SceneManager.LoadScene("Level1Dark");
                    switching = true;
                index++;

                }
                else if (switching == true)
                {

                    GameObject.Find("Player").transform.position = new Vector3(posx, posy,0);
                    DontDestroyOnLoad(transform.gameObject);
                    SceneManager.LoadScene(3);
                    SceneManager.LoadScene("Level2Light");
                    switching = false;
                index++;

                }
            }
        }

    void FixedUpdate ()
    {
        controller.Move(horizontalMove * Time.fixedDeltaTime, crouch, jump);
        jump = false;


    }
}
